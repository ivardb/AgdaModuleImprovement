module V2.ScopeChecker (scopeCheckModule) where

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
import V2.Core.PrettyPrint ()
import V2.Core.Syntax (Core)
import V2.Error (Err (..), ErrorMonad, SourceLocation (..))
import qualified V2.Error as Error (err)
import V2.PrettyPrint (D (..), Disp, SourcePos, disp, render)
import V2.Syntax
  ( Decl (..),
    MName,
    ModPath,
    ModPathT,
    ModQualified (..),
    ModQualifiedT (..),
    Module (..),
    ModuleImport (ModuleImport),
    Qualified (..),
    QualifiedT (..),
    Sig (..),
    TName,
    TeleScope,
    Term (..),
    UDecl (..),
    UModule (..),
    UTeleScope,
    splitT,
    toQualified,
    toQualifiedT,
  )

data Scope = Scope
  { -- | The module this scope belongs too
    name :: MName,
    teleScope :: TeleScope,
    -- | Maps user supplied names to fully qualified names
    nameScope :: [(Qualified, QualifiedT)],
    -- | Maps user supplied module names to fully qualified names
    modScope :: [(ModPath, ModPathT)]
  }
  deriving (Show)

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
checkImport :: ModuleImport -> ScopeMonad ()
checkImport (ModuleImport mname) = TimeStats.measureM ("ScopeChecking: Importing " ++ render (disp mname)) $ do
  cores <- asks cores
  let x = lookup mname cores
  case x of
    Nothing -> err [DS "Failed to import", DD mname, DS "in context", DD cores]
    Just (Module mp imps ts decls) -> do
      checkImports imps
      mapM_ (extendDecls [(last mp, map (Var . fst) ts)]) decls
  where
    extendDecls q (TypeSig s) = modify (\(sc : t) -> addTName (sigName s) (toQualifiedT $ sigName s) sc : t)
    extendDecls loc (ModApply m1 params m2 args) = do
      let m1q = loc ++ [(last m1, map (Var . fst) params)]
      let m2' = map fst m2
      smashedMN <- smashMN
      smashedTN <- smashTN
      let matchedMN = mapMaybe (\(n, q) -> match m2' n >>= (\x -> Just (qualify m1 x, renameT m2' m1q q))) smashedMN
      let matchedTN = mapMaybe (\(n, q) -> match m2' n >>= (\x -> Just (qualify m1 x, renameT m2' m1q q))) smashedTN
      modify (update matchedTN matchedMN)
      where
        update mtn mmn [] = undefined
        update mtn mmn (s@Scope {nameScope = ns, modScope = ms} : stack) = s {nameScope = mtn ++ ns, modScope = mmn ++ ms} : stack
    extendDecls q (Mod n ts decls) = do
      modify (\(sc : t) -> addMName n (map (,[]) n) sc : t)
      mapM_ (extendDecls $ q ++ [(last n, map (Var . fst) ts)]) decls
    extendDecls q x = return ()

-- | Scopecheck all imports
checkImports :: [ModuleImport] -> ScopeMonad ()
checkImports mis = TimeStats.measureM "ScopeChecking: Total Imports" $ do mapM_ checkImport mis

-- | Checks that everything in the module is properly scoped
scopeCheckModule :: [Core] -> UModule -> ErrorMonad Module
scopeCheckModule cores (UModule name imports bind) = do
  (ts, decls) <-
    runReaderT
      ( evalStateT
          scopeCheckTopLevel
          [createScope name []]
      )
      Env {sourceLocation = [], ctx = [], cores = map (\(Module mp imp ts decls) -> (last mp, Module mp imp ts decls)) cores}
  return $ Module [name] imports ts decls
  where
    scopeCheckTopLevel = do
      checkImports imports
      (ts, decls) <- Unbound.unbind bind
      scopeCheckTeleScope (Unbound.unrec ts) (\ts' -> (ts',) <$> do setTs ts'; mapM scopeCheckDecl decls)

-- | Scope check the telescope and scope the variables for later. FInally execute the continuation passing the updated telescope.
scopeCheckTeleScope :: UTeleScope -> (TeleScope -> ScopeMonad a) -> ScopeMonad a
scopeCheckTeleScope ts cont = h ts []
  where
    h [] acc = cont acc
    h ((n, Unbound.Embed ty) : tss) acc = do
      ty' <- scopeCheckTerm ty
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
  extendTName $ CurrentT n
  return (Def qn tm')
scopeCheckDecl (UMod n bind) = do
  pushScope n
  (ts, decls) <- Unbound.unbind bind
  (ts', decls') <- scopeCheckTeleScope (Unbound.unrec ts) (\ts' -> (ts',) <$> do setTs ts'; mapM scopeCheckDecl decls)
  popScope
  n' <- fullyQualify [n]
  extendMName [(n, [])]
  return $ Mod n' ts' decls'
scopeCheckDecl (UModApply m1 bind) = do
  (params, (m2, args)) <- Unbound.unbind bind
  q1 <- fullyQualifyT [(m1, [])]
  q2 <- lookupMN m2
  (params', args') <- scopeCheckTeleScope (Unbound.unrec params) $ \params' -> do
    args' <- mapM scopeCheckTerm args
    return (params', args')
  pushScope m1
  setTs params'
  open m2
  redirect (map fst q2) q1
  popScope
  return $ ModApply (map fst q1) params' q2 args'

-- | Scope checks a term, fully qualifing any non-local names
scopeCheckTerm :: Term -> ScopeMonad Term
scopeCheckTerm Type = pure Type
scopeCheckTerm (Var x) = do
  isScoped <- scopedVar x
  case isScoped of
    Just x' -> return $ Var x'
    Nothing -> do
      n <- lookupTN $ CurrentT x
      return $ QualifiedTerm n
scopeCheckTerm (QualifiedTerm q) = do
  n <- lookupTN q
  return $ QualifiedTerm n
scopeCheckTerm (Lam bind) = do
  (x, body) <- Unbound.unbind bind
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
createScope :: MName -> TeleScope -> Scope
createScope mn ts = Scope {name = mn, teleScope = ts, nameScope = [], modScope = []}

-- | Gets the fully qualified name
lookupTN :: (MonadState State m, MonadError Err m, MonadReader Env m) => QualifiedT -> m QualifiedT
lookupTN n = do
  smashed <- smashTN
  let x = lookup (toQualified n) smashed
  case x of
    Nothing -> err [DD n, DS "is not in scope in ctx:", DD smashed]
    Just ss -> do
      let (m, _) = splitT ss
      let (m2, _) = splitT n
      let m' = reverse $ drop (length m2) $ reverse m
      return $ qualifyT m' n

-- | Gets the fully qualified name
lookupMN :: (MonadState State m, MonadError Err m, MonadReader Env m) => ModPathT -> m ModPathT
lookupMN n = do
  smashed <- smashMN
  let x = lookup (map fst n) smashed
  case x of
    Nothing -> err [DS "Module:", DD n, DS "is not defined in ctx:", DD smashed]
    Just ss -> do
      let m = init ss
      let m2 = init n
      let m' = reverse $ drop (length m2) $ reverse m
      return $ qualifyT m' n

-- | Opens the given module into the current scope
open :: (MonadState State m) => ModPathT -> m ()
open p = do
  let p' = map fst p
  smashedMN <- smashMN
  smashedTN <- smashTN
  let matchedMN = mapMaybe (\(n, q) -> match p' n >>= (\x -> Just (x, q))) smashedMN
  let matchedTN = mapMaybe (\(n, q) -> match p' n >>= (\x -> Just (x, q))) smashedTN
  modify (update matchedTN matchedMN)
  where
    update mtn mmn [] = undefined
    update mtn mmn (s@Scope {nameScope = ns, modScope = ms} : stack) = s {nameScope = mtn ++ ns, modScope = mmn ++ ms} : stack

-- | Redirects all names from m1 to m2 in the current scope
redirect :: (MonadState State m) => ModPath -> ModPathT -> m ()
redirect m1 m2 = do modify update
  where
    update [] = []
    update (s : stack) = redirectScope s : stack

    redirectScope :: Scope -> Scope
    redirectScope s@Scope {modScope = ms, nameScope = ns} =
      s {modScope = map (second $ renameT m1 m2) ms, nameScope = map (second $ renameT m1 m2) ns}

-- | Combines all names
smashTN :: (MonadState State m) => m [(Qualified, QualifiedT)]
smashTN = do gets $ concatMap nameScope

-- | Combines all module names
smashMN :: (MonadState State m) => m [(ModPath, ModPathT)]
smashMN = do gets $ concatMap modScope

-- | Pushes a new scope on the stack
pushScope :: (MonadState State m) => MName -> m ()
pushScope mn = do modify push
  where
    push xs = createScope mn [] : xs

-- | Sets the telescope of the current scope
setTs :: (MonadState State m) => TeleScope -> m ()
setTs ts = modify update
  where
    update [] = []
    update (s : stack) = s {teleScope = ts} : stack

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
          teleScope = teleScope ns,
          nameScope = map (first (Q (name ps))) (nameScope ps) ++ nameScope ns,
          modScope = map (first (name ps :)) (modScope ps) ++ modScope ns
        }

-- | Add a name to the current scope
extendTName :: (MonadState State m) => QualifiedT -> m ()
extendTName n = do
  qn <- fullyQualifyT n
  modify (update qn)
  where
    update _ [] = undefined -- Should never have an empty module stack
    update qn (s : ss) = addTName (toQualified n) qn s : ss

-- | Add a qualified name to the scope together with its fully-qualified version
addTName :: Qualified -> QualifiedT -> Scope -> Scope
addTName name qname s = s {nameScope = (name, qname) : nameScope s}

-- | Add a new module name to the current scope
extendMName :: (MonadState State m, MonadError Err m, MonadReader Env m) => ModPathT -> m ()
extendMName n = do
  qn <- fullyQualifyT n
  let n' = map fst n
  b <- gets (isJust . lookup n' . modScope . head)
  when b (do err [DS "Duplicate module name", DD n])
  modify $ update n' qn
  where
    update _ _ [] = undefined -- Should never have an empty module stack
    update n' qn (s : ss) = addMName n' qn s : ss

-- | Add a module path to the scope together with its fully-qualified version
addMName :: ModPath -> ModPathT -> Scope -> Scope
addMName name qname s = s {modScope = (name, qname) : modScope s}

-- | Fully qualifies a name from the current stack
fullyQualify :: (MonadState State m, ModQualified a) => a -> m a
fullyQualify n = do
  stack <- gets $ map name
  return $ helper stack n
  where
    helper [] q = q
    helper (x : xs) q = helper xs $ wrap x q

-- | Fully qualifies a name from the current stack
fullyQualifyT :: (MonadState State m, ModQualifiedT a) => a -> m a
fullyQualifyT n = do
  stack <- gets $ map (\x -> (name x, map (Var . fst) $ teleScope x))
  return $ helper stack n
  where
    helper [] q = q
    helper (x : xs) q = helper xs $ wrapT x q

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

-- Scope a variable for the computation
putVar :: MonadReader Env m => TName -> TName -> m a -> m a
putVar m m2 = local (\e@Env {ctx = cs} -> e {ctx = (m, m2) : cs})

-- | Move Unbounds disambiguation integer to the actual name
getClean :: TName -> TName
getClean n = Unbound.string2Name $ Unbound.name2String n ++ show (Unbound.name2Integer n)

-- Scope a list of variables for the computation
putVars :: MonadReader Env m => [(TName, TName)] -> m a -> m a
putVars ms = local (\e@Env {ctx = cs} -> e {ctx = ms ++ cs})
