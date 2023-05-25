{- tc language -}
{-# LANGUAGE InstanceSigs #-}

module V1.TcEnvironment.ModuleEnvironment
  ( TcMonad,
    runTcMonad,
    runTcMonadState,
    State (..),
    ModSignature (..),
    emptyState,
    getCommonPath,
    processQualified,
    lookupQTy,
    lookupQTyMaybe,
    lookupQDef,
    lookupHint,
    lookupModule,
    addModule,
    addModuleSig,
    extendQCtx,
    extendQDef,
    extendWithCores,
    extendHints,
    pushLocation,
    popLocation,
  )
where

import Control.Monad.Except (MonadError (..), when)
import Control.Monad.Reader (MonadReader, ReaderT (runReaderT))
import Control.Monad.State (MonadState, StateT, evalStateT, gets, modify)
import Data.Bifunctor (second)
import Data.Foldable (foldrM)
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Unbound.Generics.LocallyNameless as Unbound
import V1.Core.Syntax (Core (..), CoreDecl (..))
import V1.Error (Err, ErrorMonad)
import V1.PrettyPrint (D (..), Disp (..), render)
import V1.Syntax
  ( MName,
    ModPath,
    ModPathT,
    ModQualified (pop),
    Qualified,
    QualifiedT,
    Sig (..),
    TName,
    TeleScope,
    Term (..),
    Type,
    baseName,
    split,
    splitT,
  )
import V1.TcEnvironment.TermEnvironment (Env, emptyEnv, err)

type TcMonad = StateT State (ReaderT Env ErrorMonad)

-- | Entry point for the type checking monad, given an
-- initial environment, returns either an error message
-- or some result.
runTcMonad :: Env -> State -> TcMonad a -> ErrorMonad a
runTcMonad env state m = runReaderT (evalStateT m state) env

-- | Run the TcMonad with an empty environment
runTcMonadState :: State -> TcMonad a -> ErrorMonad a
runTcMonadState = runTcMonad emptyEnv

data State = State
  { -- | Contains the information of each module.
    -- cannot be initialised directly from the code
    -- as changes can be made to definitions
    signatures :: ModSignature,
    -- | The current module we are checking.
    currentLocation :: ModPath
  }
  deriving (Show)

data ModSignature = ModSig
  { -- | The type of definitions
    qCtx :: Map TName Type,
    -- | The actual definitions. Needed for WHNF.
    qDefs :: Map TName Term,
    -- | The telescope of each module. Needed to check module applications
    modules :: Map MName (TeleScope, ModSignature),
    -- | Type declarations (signatures): it's not safe to
    -- put these in the context until a corresponding term
    -- has been checked as we do not allow recursive definitions
    hints :: Map TName Type
  }
  deriving (Show)

-- | Modifies the signature of the module we are currently in
modifyCurrent :: (MonadState State m) => (ModSignature -> ModSignature) -> m ()
modifyCurrent f = do
  loc <- gets currentLocation
  modifySig loc f

-- | Modify a signature
modifySig :: (MonadState State m) => ModPath -> (ModSignature -> ModSignature) -> m ()
modifySig path f = modify (\s@State {signatures = sigs} -> s {signatures = h path sigs})
  where
    h :: ModPath -> ModSignature -> ModSignature
    h [] s = f s
    h (x : xs) s@ModSig {modules = mods} = s {modules = Map.adjust (second $ h xs) x mods}

-- | Lookup a signature starting at the root
-- Returns:
-- - The telescope of module parameters around the signature
-- - The signature
-- - Definitions created from module applications
lookupSignature :: (MonadState State m, MonadError Err m, MonadReader Env m) => ModPathT -> m (TeleScope, ModSignature, [(TName, Term)])
lookupSignature path = do
  sig <- gets signatures
  lookupSignature' path sig

-- | Lookup a signature relative to the provided signature
-- Returns:
-- - The telescope of module parameters around the signature
-- - The signature
-- - Definitions created from module applications
lookupSignature' :: (MonadError Err m, MonadReader Env m) => ModPathT -> ModSignature -> m (TeleScope, ModSignature, [(TName, Term)])
lookupSignature' path signature = h path signature [] []
  where
    h [] s acc defAcc = return (acc, s, defAcc)
    h ((x, mArgs) : xs) s@ModSig {modules = mods} acc defAcc = case Map.lookup x mods of
      Nothing -> err [DD x, DS "could not be located among", DD $ Map.keys mods, DS "when looking for", DD path]
      Just (ts, sig) -> do
        when (length mArgs > length ts) $ err [DD x, DS "was provided with args", DD mArgs, DS "but has telescope", DD ts]
        let (matched, remaining) = splitAt (length mArgs) ts
        let new_defs = zip (map fst matched) mArgs
        h xs sig (acc ++ remaining) (defAcc ++ new_defs)

-- | The initial sate.
emptyState :: State
emptyState = State {signatures = emptySig, currentLocation = []}

-- | An empty signature
emptySig :: ModSignature
emptySig = ModSig Map.empty Map.empty Map.empty Map.empty

-- | Add the cores at the current location
extendWithCores :: (Unbound.Fresh m, MonadError Err m, MonadState State m) => [Core] -> m ()
extendWithCores cores = do
  values <- mapM fromCore cores
  modifySig [] (\s@ModSig {modules = mods} -> s {modules = Map.union mods $ Map.fromList values})
  where
    fromCore (Core n _ ts decls) = do
      s <- foldrM processDecl emptySig decls
      return (n, (ts, s))
    processDecl :: (Unbound.Fresh m) => CoreDecl -> ModSignature -> m ModSignature
    processDecl (CoreDef n tm) sig@ModSig {qDefs = ctx} = return sig {qDefs = Map.insert (baseName n) tm ctx}
    processDecl (CoreTypeSig s) sig@ModSig {qCtx = ctx} = return sig {qCtx = Map.insert (baseName $ sigName s) (sigType s) ctx}
    processDecl (CoreModule n ts decls) sig@ModSig {modules = mods} = do
      s <- foldrM processDecl emptySig decls
      return sig {modules = Map.insert (last n) (ts, s) mods}

-- | Called by the term typechecker to deal with any qualified names
processQualified :: (MonadState State m, MonadReader Env m, MonadError Err m) => QualifiedT -> m Type
processQualified = lookupQTy

-- | Find a definitions type in the context.
lookupQTyMaybe :: (MonadState State m, MonadReader Env m, MonadError Err m) => QualifiedT -> m (Maybe Type)
lookupQTyMaybe v = do
  let (path, name) = splitT v
  (ts, s, defs) <- lookupSignature path
  let typeDef = Map.lookup name $ qCtx s
  return $ fmap (\x -> applyDefs defs $ foldr (\(n, ty) b -> Pi ty (Unbound.bind n b)) x ts) typeDef

-- | Find the type of a definition specified in the context
-- throwing an error if the name doesn't exist
lookupQTy :: (MonadState State m, MonadReader Env m, MonadError Err m) => QualifiedT -> m Type
lookupQTy v =
  do
    x <- lookupQTyMaybe v
    case x of
      Just res -> return res
      Nothing -> do
        (_, sig, _) <- lookupSignature $ fst $ splitT v
        err
          [ DS ("The qualified name " ++ render (disp v) ++ " was not found."),
            DS "in context",
            DD $ Map.toAscList $ qCtx sig
          ]

-- | Get a potential definition of a qualified name
lookupQDef :: (MonadState State m, MonadReader Env m, MonadError Err m) => QualifiedT -> m (Maybe Term)
lookupQDef v = do
  let (path, name) = splitT v
  (ts, s, defs) <- lookupSignature path
  let def = Map.lookup name $ qDefs s
  return $ fmap (\x -> applyDefs defs $ foldr (\(n, _) b -> Lam (Unbound.bind n b)) x ts) def

-- | Find a name's user supplied type signature.
lookupHint :: (MonadState State m, MonadReader Env m, MonadError Err m) => Qualified -> m (Maybe Type)
lookupHint v = do
  let (path, n) = split v
  (_, s, defs) <- lookupSignature $ map (,[]) path
  return $ Map.lookup n $ hints s

-- | Find a module
lookupModule :: (MonadState State m, MonadReader Env m, MonadError Err m) => ModPathT -> m (TeleScope, ModSignature, [(TName, Term)])
lookupModule m = do
  loc <- gets currentLocation
  lookupSignature m

-- | Extend the context with a new binding
extendQCtx :: (MonadState State m) => Qualified -> Type -> m ()
extendQCtx q t = let (p, n) = split q in modifySig p (\m@ModSig {qCtx = cs} -> m {qCtx = Map.insert n t cs})

-- | Extend the context with a new definition
extendQDef :: (MonadState State m) => Qualified -> Term -> m ()
extendQDef q t = let (p, n) = split q in modifySig p (\m@ModSig {qDefs = cs} -> m {qDefs = Map.insert n t cs})

-- | Add the module to the current location with an empty signature
addModule :: (MonadState State m) => ModPath -> TeleScope -> m ()
addModule q ts = modifySig (init q) (\s@ModSig {modules = mods} -> s {modules = Map.insert (last q) (ts, emptySig) mods})

-- | Add the module to the current location with the given signature
addModuleSig :: (MonadState State m) => ModPath -> TeleScope -> ModSignature -> m ()
addModuleSig q ts sig = modifySig (init q) (\s@ModSig {modules = mods} -> s {modules = Map.insert (last q) (ts, sig) mods})

-- | Set the current module that is being processed
pushLocation :: (MonadState State m) => MName -> m ()
pushLocation n = modify (\s@State {currentLocation = l} -> s {currentLocation = l ++ [n]})

-- | Go up a module
popLocation :: (MonadState State m) => m ()
popLocation = modify (\s@State {currentLocation = l} -> s {currentLocation = init l})

-- | Add a type hint
extendHints :: (MonadState State m) => TName -> Type -> m ()
extendHints n ty = modifyCurrent (\m@ModSig {hints = hs} -> m {hints = Map.insert n ty hs})

-- | Get the largest shared modpath of two qualified names
getCommonPath :: (ModQualified a, ModQualified b) => a -> b -> ModPath
getCommonPath a b = helper (pop a) (pop b)
  where
    helper (Just (n, as)) (Just (m, bs)) = if n == m then n : getCommonPath as bs else []
    helper _ _ = []

-- | Helper method to perform a series of substitutions
applyDefs :: [(TName, Term)] -> Term -> Term
applyDefs defs input = foldr (\(n, tm) t -> Unbound.subst n tm t) input defs