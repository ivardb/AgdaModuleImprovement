module V0.ScopeChecker (scopeCheckModule) where

import Control.Monad (when)
import Control.Monad.Except (MonadError)
import Control.Monad.Reader
  ( MonadReader (local),
    ReaderT (runReaderT),
    asks,
  )
import Control.Monad.State (MonadState, StateT, evalStateT, gets, modify)
import Data.Bifunctor (first, second)
import Data.Maybe (isJust, mapMaybe)
import qualified Debug.TimeStats as TimeStats
import qualified Unbound.Generics.LocallyNameless as Unbound
import V0.Core.PrettyPrint ()
import V0.Core.Syntax (Core (..), CoreDecl (..), Section (..))
import V0.Error (Err (..), ErrorMonad, SourceLocation (..))
import qualified V0.Error as Error (err)
import V0.PrettyPrint (D (..), Disp, SourcePos, disp, render)
import V0.Syntax
  ( Decl (..),
    MName,
    ModPath,
    ModQualified (..),
    Module (..),
    ModuleImport (ModuleImport),
    Qualified (..),
    Sig (..),
    TName,
    TeleScope,
    Term (..),
    UDecl (..),
    UModule (..),
    UTeleScope,
  )

data Scope = Scope
  { -- | The module this scope belongs too
    name :: MName,
    -- | Maps user supplied names to fully qualified names
    nameScope :: [(Qualified, Qualified)],
    -- | Maps user supplied module names to fully qualified names
    modScope :: [(ModPath, ModPath)]
  }

-- | We operate on a stack of scopes
type State = [Scope]

data Env = Env
  { -- | Cores, used for dealing with imports
    cores :: [(MName, Core)],
    -- | Source locations for error reporting
    sourceLocation :: [SourceLocation],
    -- | Variables that are in scope
    ctx :: [(TName, TName)]
  }

type ScopeMonad = StateT State (ReaderT Env ErrorMonad)

-- | Scopecheck an import by loading the appropriate core into the stack
-- | The names are added to the top-level as is. Imported names are not qualified by the module they are imported into
checkImport :: ModuleImport -> ScopeMonad ()
checkImport (ModuleImport mname) = TimeStats.measureM ("ScopeChecking: Importing " ++ render (disp mname)) $ do
  cores <- asks cores
  let x = lookup mname cores
  case x of
    Nothing -> err [DS "Failed to import", DD mname, DS "in context", DD cores]
    Just core -> do
      mapM_ (\(Section mp _) -> modify (\(sc : t) -> addMName mp mp sc : t)) $ sections core
      mapM_ extendDecls $ decls core
  where
    extendDecls (CoreTypeSig (Sig n _)) = modify (\(sc : t) -> addTName n n sc : t)
    extendDecls x = return ()

-- | Scopecheck all imports
checkImports :: [ModuleImport] -> ScopeMonad ()
checkImports = TimeStats.measureM "ScopeChecking: Total Imports" . mapM_ checkImport

-- | Checks that everything in the module is properly scoped
scopeCheckModule :: [Core] -> UModule -> ErrorMonad Module
scopeCheckModule cores (UModule name imports bind) = do
  (ts, decls) <-
    runReaderT
      ( evalStateT
          scopeCheckTopLevel
          [createScope name]
      )
      Env {sourceLocation = [], ctx = [], cores = map (\c -> (modName c, c)) cores}
  return $ Module [name] imports ts decls
  where
    scopeCheckTopLevel = do
      checkImports imports
      (ts, decls) <- Unbound.unbind bind
      scopeCheckTeleScope (Unbound.unrec ts) (\ts' -> (ts',) <$> mapM scopeCheckDecl decls)

-- | Scope check the telescope and scope the variables for later. FInally execute the continuation passing the updated telescope.
scopeCheckTeleScope :: UTeleScope -> (TeleScope -> ScopeMonad a) -> ScopeMonad a
scopeCheckTeleScope ts cont = h ts []
  where
    h [] acc = cont acc
    h ((n, Unbound.Embed ty) : tss) acc = do
      ty' <- scopeCheckTerm ty
      -- Get a fresh name for the variable
      let n' = getClean n
      putVar n n' $ do
        h tss (acc ++ [(n', ty')])

-- | Scope checks the declaration and fully qualfies its name
scopeCheckDecl :: UDecl -> ScopeMonad Decl
scopeCheckDecl (UTypeSig (Sig n ty)) = do
  ty' <- scopeCheckTerm ty
  qn <- fullyQualify n
  return (TypeSig $ Sig qn ty')
scopeCheckDecl (UDef n tm) = do
  tm' <- scopeCheckTerm tm
  qn <- fullyQualify (Current n)
  extendTName $ Current n
  return (Def qn tm')
scopeCheckDecl (UMod n bind) = do
  pushScope n
  (ts, decls) <- Unbound.unbind bind
  (ts', decls') <- scopeCheckTeleScope (Unbound.unrec ts) (\ts' -> (ts',) <$> mapM scopeCheckDecl decls)
  popScope
  n' <- fullyQualify [n]
  extendMName [n]
  return $ Mod n' ts' decls'
scopeCheckDecl (UModApply m1 bind) = do
  (params, (m2, args)) <- Unbound.unbind bind
  q1 <- fullyQualify [m1]
  q2 <- lookupMN m2
  (params', args') <- scopeCheckTeleScope (Unbound.unrec params) $ \params' -> do
    args' <- mapM scopeCheckTerm args
    return (params', args')
  pushScope m1
  open m2
  redirect q2 q1
  popScope
  return $ ModApply q1 params' q2 args'

-- | Scope checks a term, fully qualifing any non-local names
scopeCheckTerm :: Term -> ScopeMonad Term
scopeCheckTerm Type = pure Type
scopeCheckTerm (Var x) = do
  isScoped <- scopedVar x
  case isScoped of
    -- Variable names are made unique
    Just x' -> return $ Var x'
    Nothing -> do
      n <- lookupTN $ Current x
      return $ QualifiedTerm n
scopeCheckTerm (QualifiedTerm q) = do
  n <- lookupTN q
  return $ QualifiedTerm n
scopeCheckTerm (Lam bind) = do
  (x, body) <- Unbound.unbind bind
  -- Get a fresh name for the variable
  let x' = getClean x
  body' <- putVar x x' $ scopeCheckTerm body
  return $ Lam $ Unbound.bind x' body'
scopeCheckTerm (App t1 t2) = do
  t1' <- scopeCheckTerm t1
  t2' <- scopeCheckTerm t2
  return $ App t1' t2'
scopeCheckTerm (Pi t bind) = do
  t' <- scopeCheckTerm t
  (x, body) <- Unbound.unbind bind
  -- Get a fresh name for the variable
  let x' = getClean x
  body' <- putVar x x' $ scopeCheckTerm body
  return $ Pi t' $ Unbound.bind x' body'
scopeCheckTerm (Ann tm ty) = do
  tm' <- scopeCheckTerm tm
  ty' <- scopeCheckTerm ty
  return $ Ann tm' ty'
scopeCheckTerm (Pos source tm) = do
  tm' <- extendSourceLocation source tm (scopeCheckTerm tm)
  return $ Pos source tm'
scopeCheckTerm TyBool = return TyBool
scopeCheckTerm (LitBool b) = return $ LitBool b
scopeCheckTerm (If t1 t2 t3) = do
  t1' <- scopeCheckTerm t1
  t2' <- scopeCheckTerm t2
  t3' <- scopeCheckTerm t3
  return $ If t1' t2' t3'
scopeCheckTerm TyUnit = return TyUnit
scopeCheckTerm Unit = return Unit

-- | Creates an empty scope for the module
createScope :: MName -> Scope
createScope mn = Scope {name = mn, nameScope = [], modScope = []}

-- | Gets the fully qualified name
lookupTN :: (MonadState State m, MonadError Err m, MonadReader Env m) => Qualified -> m Qualified
lookupTN n = do
  smashed <- smashTN
  let x = lookup n smashed
  case x of
    Nothing -> err [DD n, DS "is not in scope in ctx:", DD smashed]
    Just ss -> return ss

-- | Gets the fully qualified name
lookupMN :: (MonadState State m, MonadError Err m, MonadReader Env m) => ModPath -> m ModPath
lookupMN n = do
  smashed <- smashMN
  let x = lookup n smashed
  case x of
    Nothing -> err [DS "Module:", DD n, DS "is not defined in ctx:", DD smashed]
    Just ss -> return ss

-- | Opens the given module into the current scope
open :: (MonadState State m) => ModPath -> m ()
open p = do
  smashedMN <- smashMN
  smashedTN <- smashTN
  let matchedMN = mapMaybe (\(n, q) -> match p n >>= (\x -> Just (x, q))) smashedMN
  let matchedTN = mapMaybe (\(n, q) -> match p n >>= (\x -> Just (x, q))) smashedTN
  modify (update matchedTN matchedMN)
  where
    update mtn mmn [] = undefined
    update mtn mmn (s@Scope {nameScope = ns, modScope = ms} : stack) = s {nameScope = mtn ++ ns, modScope = mmn ++ ms} : stack

-- | Redirects all names from m1 to m2 in the current scope
redirect :: (MonadState State m) => ModPath -> ModPath -> m ()
redirect m1 m2 = do modify update
  where
    update [] = []
    update (s : stack) = redirectScope s : stack

    redirectScope :: Scope -> Scope
    redirectScope s@Scope {modScope = ms, nameScope = ns} =
      s {modScope = map (second $ rename m1 m2) ms, nameScope = map (second $ rename m1 m2) ns}

-- | Combines all names
smashTN :: (MonadState State m) => m [(Qualified, Qualified)]
smashTN = do gets $ concatMap nameScope

-- | Combines all module names
smashMN :: (MonadState State m) => m [(ModPath, ModPath)]
smashMN = do gets $ concatMap modScope

-- | Pushes a new scope on the stack
pushScope :: (MonadState State m) => MName -> m ()
pushScope mn = do modify push
  where
    push xs = createScope mn : xs

-- | Pops the top most scope and merges it with the next one
-- All user supplied names will now be qualified by the top most module name
popScope :: (MonadState State m) => m ()
popScope = do modify popS
  where
    popS (ps : ns : stack) = combine ps ns : stack
    popS _ = undefined

    combine :: Scope -> Scope -> Scope
    combine ps ns =
      Scope
        { name = name ns,
          nameScope = map (first (Q (name ps))) (nameScope ps) ++ nameScope ns,
          modScope = map (first (name ps :)) (modScope ps) ++ modScope ns
        }

-- | Add a name to the current scope
extendTName :: (MonadState State m) => Qualified -> m ()
extendTName n = do
  qn <- fullyQualify n
  modify (update qn)
  where
    update _ [] = undefined -- Should never have an empty module stack
    update qn (s : ss) = addTName n qn s : ss

-- | Add a qualified name together with its fully-qualified name into the scope
addTName :: Qualified -> Qualified -> Scope -> Scope
addTName name qname s = s {nameScope = (name, qname) : nameScope s}

-- | Add a new module name to the current scope
extendMName :: (MonadState State m, MonadError Err m, MonadReader Env m) => ModPath -> m ()
extendMName n = do
  qn <- fullyQualify n
  b <- gets (isJust . lookup n . modScope . head)
  when b (do err [DS "Duplicate module name", DD n])
  modify $ update qn
  where
    update _ [] = undefined -- Should never have an empty module stack
    update qn (s : ss) = addMName n qn s : ss

-- | Insert a modpath with its fully-qualified version into the scope
addMName :: ModPath -> ModPath -> Scope -> Scope
addMName name qname s = s {modScope = (name, qname) : modScope s}

-- | Fully qualifies a name from the current stack
fullyQualify :: (MonadState State m, ModQualified a) => a -> m a
fullyQualify n = do
  stack <- gets $ map name
  return $ helper stack n
  where
    helper [] q = q
    helper (x : xs) q = helper xs $ wrap x q

-- | Throw an error
err :: (Disp a, MonadError Err m, MonadReader Env m) => [a] -> m b
err d = do
  loc <- getSourceLocation
  Error.err d loc

-- | Push a new source position on the location stack.
extendSourceLocation :: (MonadReader Env m, Disp t) => SourcePos -> t -> m a -> m a
extendSourceLocation p t =
  local (\e@Env {sourceLocation = scs} -> e {sourceLocation = SourceLocation p t : scs})

-- | Access current source location
getSourceLocation :: MonadReader Env m => m [SourceLocation]
getSourceLocation = asks sourceLocation

-- | Check if a name is well scoped from variables.
scopedVar :: MonadReader Env m => TName -> m (Maybe TName)
scopedVar n = do
  ctx <- asks ctx
  return $ lookup n ctx

-- | Scope a variable for the computation
putVar :: MonadReader Env m => TName -> TName -> m a -> m a
putVar m m2 = local (\e@Env {ctx = cs} -> e {ctx = (m, m2) : cs})

-- | Move Unbounds disambiguation integer to the actual name
getClean :: TName -> TName
getClean n = Unbound.string2Name $ Unbound.name2String n ++ show (Unbound.name2Integer n)

-- | Scope a list of variables for the computation
putVars :: MonadReader Env m => [(TName, TName)] -> m a -> m a
putVars ms = local (\e@Env {ctx = cs} -> e {ctx = ms ++ cs})
