{- tc language -}

module V0.TcEnvironment.ModuleEnvironment
  ( TcMonad,
    runTcMonad,
    runTcMonadState,
    State (..),
    emptyState,
    fromCores,
    processQualified,
    lookupQTy,
    lookupQTyMaybe,
    lookupQDef,
    lookupHint,
    lookupModule,
    getQCtx,
    getModules,
    getSharedTs,
    pushCurrentLocation,
    extendQCtx,
    extendModules,
    extendWithDecls,
    extendHints,
    popCurrentLocation,
    getCurrentTs,
  )
where

import Control.Monad.Except (MonadError (..), when)
import Control.Monad.Reader (MonadReader, ReaderT (runReaderT))
import Control.Monad.State (MonadState, StateT, evalStateT, gets, modify)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (isJust, mapMaybe)
import qualified Unbound.Generics.LocallyNameless as Unbound
import V0.Core.Syntax (Core (..), CoreDecl (..), Section (..))
import V0.Error (Err, ErrorMonad)
import qualified V0.Error as Error
import V0.PrettyPrint (D (..), Disp (..), render)
import V0.Syntax
  ( MName,
    ModPath,
    ModQualified (toModPath),
    Qualified,
    Sig (..),
    TeleScope,
    Term (..),
    Type,
  )
import V0.TcEnvironment.TermEnvironment (Env, emptyEnv, err, getSourceLocation)

type TcMonad = Unbound.FreshMT (StateT State (ReaderT Env ErrorMonad))

-- | Entry point for the type checking monad, given an
-- initial environment and state, returns either an error message
-- or some result.
runTcMonad :: Env -> State -> TcMonad a -> ErrorMonad a
runTcMonad env state m = runReaderT (evalStateT (Unbound.runFreshMT m) state) env

-- | Run the TcMonad with an empty environment
runTcMonadState :: State -> TcMonad a -> ErrorMonad a
runTcMonadState = runTcMonad emptyEnv

-- | State of types used during type-checking
data State = State
  { -- | The type of definitions
    qCtx :: Map Qualified Type,
    -- | The actual definitions. Needed for WHNF.
    qDefs :: Map Qualified Term,
    -- | The telescope of each module. Needed to check module applications
    modules :: Map ModPath TeleScope,
    -- | Type declarations (signatures): it's not safe to
    -- put these in the context until a corresponding term
    -- has been checked as we do not allow recursive definitions
    hints :: Map Qualified Sig,
    -- | The current module we are checking.
    currentLocation :: [(MName, TeleScope)]
  }

-- | The initial sate.
emptyState :: State
emptyState = State {qCtx = Map.empty, qDefs = Map.empty, modules = Map.empty, hints = Map.empty, currentLocation = []}

-- | Initialise a state from a list of imported cores
fromCores :: [Core] -> ErrorMonad State
fromCores cores = do
  (ctx, defs, mods) <- fromCores' cores (Map.empty, Map.empty, Map.empty)
  return emptyState {qCtx = ctx, modules = mods, qDefs = defs}
  where
    fromCores' [] acc = return acc
    fromCores' (x : xs) (ctx, defs, modules) = do
      let mods = sections x
      let dls = decls x
      newMods <- foldr mergeMods (return modules) mods
      (newQCtx, newQDefs) <- foldr mergeDecls (return (ctx, defs)) dls
      fromCores' xs (newQCtx, newQDefs, newMods)
    mergeMods :: (MonadError Err m) => Section -> m (Map ModPath TeleScope) -> m (Map ModPath TeleScope)
    mergeMods (Section mp ts) m = do
      acc <- m
      when (isJust (Map.lookup mp acc)) $ throwError (Error.Err [] (disp [DS "Importing", DD mp, DS "causes duplicate name", DD mp]))
      return $ Map.insert mp ts acc
    mergeDecls :: (MonadError Err m) => CoreDecl -> m (Map Qualified Type, Map Qualified Term) -> m (Map Qualified Type, Map Qualified Term)
    mergeDecls (CoreTypeSig (Sig n ty)) m = do
      (accTy, accTm) <- m
      when (isJust (Map.lookup n accTy)) $ throwError (Error.Err [] (disp [DS "Importing", DD n, DS "causes duplicate name", DD n]))
      return (Map.insert n ty accTy, accTm)
    mergeDecls (CoreDef n tm) m = do
      (accTy, accTm) <- m
      when (isJust (Map.lookup n accTy)) $ throwError (Error.Err [] (disp [DS "Importing", DD n, DS "causes duplicate name", DD n]))
      return (accTy, Map.insert n tm accTm)

-- | Called by the term typechecker to deal with any qualified names
processQualified :: (MonadState State m, MonadReader Env m, MonadError Err m) => Qualified -> m (Term, Type)
processQualified qname = do
  ty <- lookupQTy qname
  ts <- getSharedTs qname
  return (foldl (\q (tn, _) -> App q (Var tn)) (QualifiedTerm qname) ts, ty)

-- | Find a definitions type in the context.
lookupQTyMaybe ::
  (MonadState State m) =>
  Qualified ->
  m (Maybe Type)
lookupQTyMaybe v = do
  ts <- getSharedTs v
  x <- gets (Map.lookup v . qCtx)
  return $ fmap (\y -> foldl (\(Pi ty bind) (n, _) -> Unbound.instantiate bind [Var n]) y ts) x

-- | Find the type of a definition specified in the context
-- throws an error if the name doesn't exist
lookupQTy :: (MonadState State m, MonadReader Env m, MonadError Err m) => Qualified -> m Type
lookupQTy v =
  do
    x <- lookupQTyMaybe v
    gamma <- gets qCtx
    case x of
      Just res -> return res
      Nothing -> do
        loc <- getSourceLocation
        err
          [ DS ("The qualified name " ++ render (disp v) ++ " was not found."),
            DS "in context",
            DD $ Map.toAscList gamma
          ]

-- | Get a potential definition of a qualified name
lookupQDef :: (MonadState State m) => Qualified -> m (Maybe Term)
lookupQDef v = do
  ts <- getSharedTs v
  x <- gets (Map.lookup v . qDefs)
  return $ fmap (\y -> foldl (\(Lam bind) (n, _) -> Unbound.instantiate bind [Var n]) y ts) x

-- | Find the telescope of a module
lookupModule :: (MonadState State m, MonadReader Env m, MonadError Err m) => ModPath -> m TeleScope
-- We can't lookup an empty module path
lookupModule [] = return []
lookupModule m = do
  gamma <- gets modules
  let x = Map.lookup m gamma
  case x of
    Just res -> do
      ts <- getSharedTs m
      return $ drop (length ts) res
    Nothing -> do
      loc <- getSourceLocation
      err
        [ DS ("The module " ++ render (disp m) ++ " was not found."),
          DS "in context",
          DD $ Map.toAscList gamma
        ]

-- | Gets the part of the current telescope that is also in scope for the target path
getSharedTs :: (MonadState State m, ModQualified a) => a -> m TeleScope
getSharedTs a = do
  loc <- gets currentLocation
  let zipped = zip loc $ toModPath a
  let shared = takeWhile (\((n, t), i) -> i == n) zipped
  return $ concatMap (snd . fst) shared

-- | Find a name's user supplied type signature.
lookupHint :: (MonadState State m) => Qualified -> m (Maybe Sig)
lookupHint v = gets (Map.lookup v . hints)

-- | Add the modules to the environment for the given computation
extendModules :: (MonadState State m) => [(ModPath, TeleScope)] -> m ()
extendModules paths = modify (\m@State {modules = mds} -> m {modules = Map.union mds $ Map.fromList paths})

-- | Extend the definition context with a new binding
extendQCtx :: (MonadState State m) => Qualified -> Type -> m ()
extendQCtx n t =
  modify (\m@State {qCtx = cs} -> m {qCtx = Map.insert n t cs})

-- | Extend the context with all of the provided types and definitions
extendWithDecls :: (MonadState State m) => [CoreDecl] -> m ()
extendWithDecls decls = modify (\m@State {qCtx = qctx, qDefs = dfs} -> m {qCtx = Map.union qctx (Map.fromList types), qDefs = Map.union dfs (Map.fromList defs)})
  where
    types = mapMaybe getType decls
    getType (CoreTypeSig s) = Just (sigName s, sigType s)
    getType _ = Nothing

    defs = mapMaybe getDef decls
    getDef (CoreDef qn tm) = Just (qn, tm)
    getDef _ = Nothing

-- | Append a new module telescope to the current path. Used when typechecking enters a new module
pushCurrentLocation :: (MonadState State m) => MName -> TeleScope -> m ()
pushCurrentLocation path ts = modify (\m -> m {currentLocation = currentLocation m ++ [(path, ts)]})

-- | Pop the last location from the module stack. Called when the typechecker leaves a module
popCurrentLocation :: (MonadState State m) => m ()
popCurrentLocation = modify (\m -> m {currentLocation = init $ currentLocation m})

-- | Get the current telescope
getCurrentTs :: (MonadState State m) => m TeleScope
getCurrentTs = gets (concatMap snd . currentLocation)

-- | Get the complete definition context
getQCtx :: MonadState State m => m [(Qualified, Type)]
getQCtx = gets $ Map.toAscList . qCtx

-- | Load all defined modules
getModules :: MonadState State m => m [(ModPath, TeleScope)]
getModules = gets $ Map.toAscList . modules

-- | Add a type hint
extendHints :: (MonadState State m) => Sig -> m ()
extendHints h = modify (\m@State {hints = hs} -> m {hints = Map.insert (sigName h) h hs})
