module V1.TcEnvironment.TermEnvironment where

import Control.Monad.Except (MonadError)
import Control.Monad.Reader (MonadReader (local), asks)
import V1.Error (Err, SourceLocation (..))
import qualified V1.Error as Error
import V1.PrettyPrint (D (..), Disp, SourcePos)
import V1.Syntax (TName, Term, Type)

-- | The Environment used during typechecking
data Env = Env
  { -- | The type of variables
    ctx :: [(TName, Type)],
    -- | The definition of variables
    defs :: [(TName, Term)],
    -- | what part of the file we are in (for errors/warnings)
    sourceLocation :: [SourceLocation]
  }

-- | The initial environment
emptyEnv :: Env
emptyEnv =
  Env
    { ctx = [],
      defs = [],
      sourceLocation = []
    }

-- | Find the type of a variable
lookupTyMaybe ::
  (MonadReader Env m) =>
  TName ->
  m (Maybe Type)
lookupTyMaybe v = do
  ctx <- asks ctx
  return $ lookup v ctx

-- | Find the type of a name specified in the context
-- throwing an error if the name doesn't exist
lookupTy :: (MonadReader Env m, MonadError Err m) => TName -> m Type
lookupTy v =
  do
    x <- lookupTyMaybe v
    gamma <- getCtx
    case x of
      Just res -> return res
      Nothing -> do
        loc <- getSourceLocation
        err
          [ DS ("The variable " ++ show v ++ " was not found."),
            DS "in context",
            DD gamma
          ]

-- | Find a name's definition in the context. Used to propogate information on booleans
lookupDef ::
  (MonadReader Env m) =>
  TName ->
  m (Maybe Term)
lookupDef v = do
  defs <- asks defs
  return $ lookup v defs

-- | Extend the context with a new binding
extendCtx :: (MonadReader Env m) => TName -> Type -> m a -> m a
extendCtx n t =
  local (\m@Env {ctx = cs} -> m {ctx = (n, t) : cs})

-- | Extend the context with a list of bindings
extendCtxs :: (MonadReader Env m) => [(TName, Type)] -> m a -> m a
extendCtxs ds =
  local (\m@Env {ctx = cs} -> m {ctx = ds ++ cs})

-- | Add a new definition
extendDef :: (MonadReader Env m) => TName -> Term -> m a -> m a
extendDef n tm = local (\m@Env {defs = df} -> m {defs = (n, tm) : df})

-- | Add a list of new definitions
extendDefs :: (MonadReader Env m) => [(TName, Term)] -> m a -> m a
extendDefs defs = local (\m@Env {defs = df} -> m {defs = defs ++ df})

-- | Push a new source position on the location stack.
extendSourceLocation :: (MonadReader Env m, Disp t) => SourcePos -> t -> m a -> m a
extendSourceLocation p t =
  local (\e@Env {sourceLocation = locs} -> e {sourceLocation = SourceLocation p t : locs})

-- | Get the complete current context
getCtx :: MonadReader Env m => m [(TName, Type)]
getCtx = asks ctx

-- | access current source location
getSourceLocation :: MonadReader Env m => m [SourceLocation]
getSourceLocation = asks sourceLocation

-- | Throw an error
err :: (Disp a, MonadError Err m, MonadReader Env m) => [a] -> m b
err d = do
  loc <- getSourceLocation
  Error.err d loc