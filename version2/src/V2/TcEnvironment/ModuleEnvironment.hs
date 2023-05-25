{- tc language -}
{-# LANGUAGE InstanceSigs #-}

module V2.TcEnvironment.ModuleEnvironment
  ( TcMonad,
    runTcMonad,
    runTcMonadState,
    State (..),
    ModSignature (..),
    emptyState,
    initialise,
    processQualified,
    lookupQTy,
    lookupQTyMaybe,
    lookupHint,
    lookupQDef,
    lookupTeleScope,
    pushLocation,
    popLocation,
  )
where

import Control.Monad.Except (MonadError (..), when)
import Control.Monad.Reader (MonadReader, ReaderT (runReaderT))
import Control.Monad.State (MonadState (put), StateT, evalStateT, gets, modify)
import Data.Bifunctor (second)
import Data.Foldable (foldlM)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (isJust, isNothing)
import qualified Unbound.Generics.LocallyNameless as Unbound
import V2.Core.Syntax (Core)
import V2.Error (Err, ErrorMonad)
import qualified V2.Error as Error (err)
import V2.PrettyPrint (D (..), Disp (..), render)
import V2.Syntax
  ( Decl (..),
    MName,
    ModPath,
    ModPathT,
    Module (Module),
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
import V2.TcEnvironment.TermEnvironment (Env, emptyEnv, err)

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
    modules :: Map MName (TeleScope, Either ModSignature Application)
  }
  deriving (Show)

-- | A module application
data Application = Application ModPathT [Term] deriving (Show)

-- | Initialise the typing environment with the cores
initialise :: (Unbound.Fresh m, MonadState State m, MonadError Err m) => [Core] -> Module -> m ()
initialise cores m = do
  (mn, (ts, sig)) <- createState m
  imp <- fromCores cores
  put $ State {currentLocation = [], signatures = emptySig {modules = Map.fromList $ (mn, (ts, Left sig)) : imp}}

-- | Add the cores at the current location
fromCores :: (Unbound.Fresh m, MonadError Err m, MonadState State m) => [Core] -> m [(MName, (TeleScope, Either ModSignature Application))]
fromCores cores = do
  values <- mapM createState cores
  return $ map (second $ second Left) values

-- | Create a signature from a module
createState :: (Unbound.Fresh m, MonadError Err m) => Module -> m (MName, (TeleScope, ModSignature))
createState (Module mp imp ts decls) = do
  sig <- foldlM fromDecl emptySig decls
  return (last mp, (ts, sig))
  where
    -- Put all declarations in the correct place in the signature
    -- Also perform all of the necessary duplicate name checks
    fromDecl :: (Unbound.Fresh m, MonadError Err m) => ModSignature -> Decl -> m ModSignature
    fromDecl sig@ModSig {qDefs = defs, qCtx = ctx} (Def qn tm) = do
      if isJust $ Map.lookup (baseName qn) defs
        then Error.err [DS "Duplicate definitions for", DD qn] []
        else
          if isNothing $ Map.lookup (baseName qn) ctx
            then Error.err [DS "Missing type for toplevel declaration", DD qn] []
            else return $ sig {qDefs = Map.insert (baseName qn) tm defs}
    fromDecl sig@ModSig {qCtx = ctx, qDefs = defs} (TypeSig (Sig qn ty)) = do
      if isJust $ Map.lookup (baseName qn) ctx
        then Error.err [DS "Duplicate typesig for", DD qn] []
        else
          if isJust $ Map.lookup (baseName qn) defs
            then Error.err [DS "Typesig after definition for", DD qn] []
            else return sig {qCtx = Map.insert (baseName qn) ty ctx}
    fromDecl sig@ModSig {modules = mods} (Mod m ts' decls') = do
      modSig <- foldlM fromDecl emptySig decls'
      return $ sig {modules = Map.insert (last m) (ts', Left modSig) mods}
    fromDecl sig@ModSig {modules = mods} (ModApply m params m2 args) = do
      return $ sig {modules = Map.insert (last m) (params, Right $ Application m2 args) mods}

-- | Lookup a signature starting at the root
-- Returns:
-- - The telescope of module parameters around the signature
-- - The signature
-- - Definitions created from module applications
lookupSignature :: (MonadState State m, MonadError Err m, MonadReader Env m) => ModPathT -> m (TeleScope, ModSignature, [(TName, Term)])
lookupSignature path = do
  sig <- gets signatures
  lookupSig' path sig

-- | Lookup a signatue starting at the provided signature 
-- Returns:
-- - The telescope of module parameters around the signature
-- - The signature
-- - Definitions created from module applications
lookupSig' :: (MonadState State m, MonadError Err m, MonadReader Env m) => ModPathT -> ModSignature -> m (TeleScope, ModSignature, [(TName, Term)])
lookupSig' target sig = h target sig [] []
  where
    h :: (MonadState State m, MonadError Err m, MonadReader Env m) => ModPathT -> ModSignature -> TeleScope -> [(TName, Term)] -> m (TeleScope, ModSignature, [(TName, Term)])
    -- Target found return the accumulators
    h [] s tsAcc defAcc = return (tsAcc, s, defAcc)
    -- Include the telescope as leaveOut is nothing
    h ((x, mArgs) : xs) s tsAcc defAcc = case Map.lookup x (modules s) of
      Nothing -> err [DD x, DS "could not be located among", DD $ Map.keys (modules s), DS "when looking for", DD target]
      -- Continue through the module tree
      Just (ts, Left newS) -> do
        when (length mArgs > length ts) $ err [DD x, DS "was provided with args", DD mArgs, DS "but has telescope", DD ts]
        let (matched, remaining) = splitAt (length mArgs) ts
        let new_defs = zip (map fst matched) mArgs
        h xs newS (tsAcc ++ remaining) (defAcc ++ new_defs)
      Just (ts, Right (Application m2 args)) -> do
        when (length mArgs > length ts) $ err [DD x, DS "was provided with args", DD mArgs, DS "but has telescope", DD ts]
        let (matched, remaining) = splitAt (length mArgs) ts
        let new_defs = zip (map fst matched) mArgs
        -- Find the aliased module, relative to the current location
        (ts', newSig, defs) <- lookupSig' m2 sig
        -- The arguments are applied to some of the parameters
        let (matched', remaining') = splitAt (length args) ts'
        -- Create the definitions for the applied arguments
        let new_defs' = zip (map fst matched') args
        -- Include the remainder in the telescope
        h xs newSig (tsAcc ++ remaining ++ remaining') (defAcc ++ defs ++ new_defs ++ new_defs')

-- | The initial sate.
emptyState :: State
emptyState = State {signatures = emptySig, currentLocation = []}

-- | An empty signature
emptySig :: ModSignature
emptySig = ModSig Map.empty Map.empty Map.empty

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
        (_, s, _) <- lookupSignature $ fst $ splitT v
        err
          [ DS ("The qualified name " ++ render (disp v) ++ " was not found."),
            DS "in context",
            DD $ Map.toAscList $ qCtx s
          ]

-- | Get the type-signature of a declaration
lookupHint :: (MonadState State m, MonadReader Env m, MonadError Err m) => Qualified -> m (Maybe Type)
lookupHint v = do
  let (path, n) = split v
  (_, s, defs) <- lookupSignature $ map (,[]) path
  return $ Map.lookup n $ qCtx s

-- | Get a potential definition of a qualified name
lookupQDef :: (MonadState State m, MonadReader Env m, MonadError Err m) => QualifiedT -> m (Maybe Term)
lookupQDef v = do
  let (path, name) = splitT v
  (ts, s, defs) <- lookupSignature path
  let def = Map.lookup name $ qDefs s
  return $ fmap (\x -> applyDefs defs $ foldr (\(n, _) b -> Lam (Unbound.bind n b)) x ts) def

-- | Find the telescope of a module. Needed to typecheck module aliases
lookupTeleScope :: (MonadState State m, MonadReader Env m, MonadError Err m) => ModPathT -> m TeleScope
lookupTeleScope path = do
  loc <- gets currentLocation
  (ts, s, defs) <- lookupSignature (init path)
  case Map.lookup (fst $ last path) (modules s) of
    Nothing -> err [DS "Could not find module", DD path]
    Just (ts', Left _) -> return $ map (second (applyDefs defs)) (ts ++ ts')
    -- Module aliases can be partial, but are still able to be aliased for the remainder
    Just (ts', Right (Application m args)) -> do
      ts'' <- lookupTeleScope m
      let (x, t) = splitAt (length args) ts''
      return $ map (second (applyDefs (defs ++ zip (map fst x) args))) (ts ++ ts' ++ t)

-- | Set the current module that is being processed
pushLocation :: (MonadState State m) => MName -> m ()
pushLocation n = modify (\s@State {currentLocation = l} -> s {currentLocation = l ++ [n]})

-- | Go up a module
popLocation :: (MonadState State m) => m ()
popLocation = modify (\s@State {currentLocation = l} -> s {currentLocation = init l})

-- | Helper method to perform a series of substitutions
applyDefs :: [(TName, Term)] -> Term -> Term
applyDefs defs input = foldr (\(n, tm) t -> Unbound.subst n tm t) input defs
