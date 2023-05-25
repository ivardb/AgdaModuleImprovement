module V0.ModuleTypeChecker (tcModule, verifyCore) where

import Control.Monad.Except (MonadError (..))
import Data.Bifunctor (second)
import qualified Data.Map as Map
import Data.Maybe (isJust, mapMaybe)
import qualified Debug.TimeStats as TimeStats
import Text.PrettyPrint (render, ($$))
import qualified Unbound.Generics.LocallyNameless as Unbound
import V0.Core.Syntax (Core (..), CoreDecl (..), Section (..), coreDeclToDecl)
import V0.Error (ErrorMonad)
import qualified V0.Error as Error
import V0.PrettyPrint (D (..), Disp (..))
import V0.Syntax (Decl (..), ModPath, ModQualified (..), Module (..), Qualified, Sig (..), TName, TeleScope, Term (..), Type)
import V0.TcEnvironment.ModuleEnvironment (State (modules), TcMonad)
import qualified V0.TcEnvironment.ModuleEnvironment as Env
import qualified V0.TcEnvironment.TermEnvironment as Env
import V0.TermTypeChecker (checkType, tcType)

-- | Take an environment containing import data and a core to verify
verifyCore :: State -> Core -> ErrorMonad ()
verifyCore e c = do
  _ <- Env.runTcMonadState state $ tcModule $ Module [modName c] [] (params c) (map coreDeclToDecl $ decls c)
  return ()
  where
    state = e {modules = Map.fromList $ map (\(Section p t) -> (p, t)) $ sections c}

-- | Type check a module to a list of declarations
tcModule :: Module -> TcMonad Core
tcModule (Module n imp ts decls) = do
  (mods, decl) <- tcModuleBody n ts decls
  return $ Core (last n) ts imp (map (uncurry Section) mods) decl

-- | Typecheck the entire telescope, automatically scoping the variables for the remainder.
-- At the end perform the passed computation with the whole telescope in scope
tcTeleScope :: TeleScope -> (TeleScope -> TcMonad a) -> TcMonad a
tcTeleScope ts cont = h ts []
  where
    h [] acc = cont acc
    h ((n, ty) : tss) acc = do
      ty' <- tcType ty
      Env.extendCtx n ty' (h tss (acc ++ [(n, ty')]))

-- | Type check a module body using
-- - The name of the module, needed to construct its own telescope
-- - The module body
-- - The accumulated telescope of the body.
-- and return:
-- - The telescope of any modules defined in the body, including itself
-- - The resulting declarations of typechecking the body
tcModuleBody :: ModPath -> TeleScope -> [Decl] -> TcMonad ([(ModPath, TeleScope)], [CoreDecl])
tcModuleBody mn params decls = do
  tcTeleScope
    params
    ( \params' -> do
        Env.pushCurrentLocation (last mn) params'
        ts <- Env.getCurrentTs
        Env.extendModules [(mn, ts)]
        (mods, ds) <- foldr tcE (return ([], [])) decls
        Env.popCurrentLocation
        return ((mn, ts) : mods, ds)
    )
  where
    d `tcE` m = do
      (mods, ds) <- tcEntry d
      (mods2, decls2) <- m
      return (mods ++ mods2, ds ++ decls2)

-- | Check each sort of declaration in a module
tcEntry :: Decl -> TcMonad ([(ModPath, TeleScope)], [CoreDecl])
tcEntry (Def n term) = TimeStats.measureM "TypeCheck: Definitions" $ do
  oldDef <- Env.lookupQTyMaybe n
  if isJust oldDef
    then Env.err [DS "Duplicate definition for", DD n]
    else do
      hint <- Env.lookupHint n
      case hint of
        Nothing -> do
          Env.err [DS "Missing type for toplevel declaration", DD n]
        Just ty -> do
          let handler (Error.Err ps msg) = throwError $ Error.Err ps (msg $$ msg')
              msg' =
                disp
                  [ DS "When checking the term",
                    DD term,
                    DS "against the signature",
                    DD ty
                  ]
           in do
                term' <- checkType term (sigType ty) `catchError` handler
                ts <- Env.getCurrentTs
                let ds = [wrapParams (CoreTypeSig (Sig n (sigType ty))) ts, wrapParams (CoreDef n term') ts]
                Env.extendWithDecls ds
                return ([], ds)
tcEntry (TypeSig sig) = TimeStats.measureM "TypeCheck: Signatures" $ do
  oldTy <- Env.lookupQTyMaybe (sigName sig)
  oldHint <- Env.lookupHint (sigName sig)
  if isJust oldTy
    then Env.err [DS "Hint after definition for:", DD $ sigName sig]
    else
      if isJust oldHint
        then Env.err [DS "Duplicate type hint for:", DD $ sigName sig]
        else do
          ty <- tcType $ sigType sig
          Env.extendHints $ sig {sigType = ty}
          return ([], [])
tcEntry (Mod n ts decls) = TimeStats.measureM ("TCMod:" ++ render (disp n)) $ do
  tcModuleBody n ts decls
tcEntry (ModApply m1 m1params m2 m2args) = TimeStats.measureM "TypeCheck: ModuleAliases" $
  TimeStats.measureM ("TCAlias:" ++ render (disp m1)) $ do
    m2params <- Env.lookupModule m2
    m1params' <- tcTeleScope m1params (\ts -> do validateArgs m2params m2args; return ts)

    -- Create new declarations
    ctx <- Env.getQCtx
    relevantTs <- Env.getSharedTs m2
    let newSigs = concat $ mapMaybe (createNewDecl m1 m2 m2args $ map (Var . fst) relevantTs) ctx

    --Create new module signatures
    modCtx <- Env.getModules
    parentTs <- Env.getCurrentTs

    -- Deal with implied alias parameters and create the new modules
    let (matched, remaining) = splitAt (length m2args) m2params
    let m1params'' = m1params' ++ map (second (applyDefs (zip (map fst matched) m2args))) remaining
    let newMods = mapMaybe (createMod parentTs m1params'') modCtx

    -- Wrap the created decls
    let wrapped = map (\x -> wrapParams x (parentTs ++ m1params')) newSigs

    Env.extendModules newMods
    Env.extendWithDecls wrapped
    return (newMods, wrapped)
  where
    applyDefs :: [(TName, Term)] -> Term -> Term
    applyDefs defs input = foldr (\(n, tm) t -> Unbound.subst n tm t) input defs
    createMod tsParent m1params' (m, ts) = do
      r <- match m2 m
      return (qualify m1 r, tsParent ++ m1params' ++ drop (length m2args + length tsParent) ts)

    -- | Check if the declaration came from the old module. Then create a new declaration for it by creating a function call
    createNewDecl :: ModPath -> ModPath -> [Term] -> [Term] -> (Qualified, Type) -> Maybe [CoreDecl]
    createNewDecl newName oldName userSuppliedArgs remainingModuleArgs (dn, ty) = do
      name <- qualify newName <$> match oldName dn
      let fty = fixSig (remainingModuleArgs ++ userSuppliedArgs) ty
      let newDef = foldl App (QualifiedTerm dn) (remainingModuleArgs ++ userSuppliedArgs)
      return [CoreTypeSig Sig {sigName = name, sigType = fty}, CoreDef name newDef]
      where
        fixSig :: [Term] -> Type -> Type
        fixSig [] s = s
        fixSig (x : xs) (Pi _ bind) = do
          fixSig xs $ Unbound.instantiate bind [x]
        fixSig x (Ann tm _) = fixSig x tm
        fixSig x (Pos _ tm) = fixSig x tm
        fixSig _ t = error $ show t -- Should never happen

    -- Check that the terms are valid arguments to the types
    validateArgs :: TeleScope -> [Term] -> TcMonad ()
    validateArgs _ [] = return ()
    validateArgs [] xs = Env.err [DS "Too many arguments provided. ", DD xs, DS "were not needed"]
    validateArgs ((x, ty) : xs) (tm : ys) =
      let handler (Error.Err ps msg) = throwError $ Error.Err ps (msg $$ msg')
          msg' = disp [DS "When checing that", DD tm, DS "is a valid argument for the parameter", DD x, DS "of type", DD ty]
       in do
            tm' <- checkType tm ty `catchError` handler
            Env.extendDef x tm' $ validateArgs xs ys

-- | Wrap the parameters as either a Pi around a typesig or as a lambda around a definition
wrapParams :: CoreDecl -> TeleScope -> CoreDecl
wrapParams = foldr wrapParam
  where
    wrapParam (name, ty) (CoreTypeSig sig@Sig {sigType = old}) = CoreTypeSig $ sig {sigType = Pi ty (Unbound.bind name old)}
    wrapParam (name, ty) (CoreDef l tm) = CoreDef l $ Lam $ Unbound.bind name tm
