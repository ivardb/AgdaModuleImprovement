module V1.ModuleTypeChecker (tcModule, verifyCore) where

import Control.Monad.Except (catchError, throwError, void)
import Data.Bifunctor (second)
import Data.Maybe (catMaybes, isJust)
import Text.PrettyPrint ( ($$), render )
import qualified Unbound.Generics.LocallyNameless as Unbound
import V1.Core.Syntax (Core (..), CoreDecl (..), coreDeclToDecl)
import V1.Error (ErrorMonad)
import qualified V1.Error as Error
import V1.PrettyPrint (D (..), Disp (disp))
import V1.Syntax (Decl (..), ModQualified (..), Module (..), Qualified (..), Sig (Sig), TName, TeleScope, Term (..), baseName, ModPath, Type, toQualifiedT, ModPathT, ModQualifiedT (..), QualifiedT (..))
import V1.TcEnvironment.ModuleEnvironment (ModSignature (..), TcMonad, emptyState)
import qualified V1.TcEnvironment.ModuleEnvironment as Env
import qualified V1.TcEnvironment.TermEnvironment as Env
import V1.TermTypeChecker (checkType, tcType)
import qualified Debug.TimeStats as TimeStats
import qualified Data.Map as Map

-- | Typecheck the core given previously imported cores
verifyCore :: [Core] -> Core -> ErrorMonad ()
verifyCore cores (Core n imp ts decls) =
  Env.runTcMonadState
    emptyState
    ( do
        decls' <- mapM coreDeclToDecl decls
        void $ tcModule cores $ Module [n] imp ts decls'
    )

-- | Type check a module to a list of declarations.
-- The list of cores will be added to the top level module
tcModule :: [Core] -> Module -> TcMonad Core
tcModule cores (Module name imp ts decls) = do
  tcTeleScope
    ts
    ( do
        Env.addModule name ts
        Env.pushLocation (last name)
        TimeStats.measureM "TypeCheck: Initialise typing env" $ Env.extendWithCores cores
        core <- tcDecls decls
        return $ Core (last name) imp ts core
    )

-- | Typecheck the entire telescope, automatically scoping the variables for the remainder.
-- At the end perform the passed computation with the whole telescope in scope
tcTeleScope :: TeleScope -> TcMonad a -> TcMonad a
tcTeleScope ts cont = foldr (\(n, ty) m -> do tcType ty; Env.extendCtx n ty m) cont ts

-- | Typecheck a list of declarations
-- Just a map with some error reporting
tcDecls :: [Decl] -> TcMonad [CoreDecl]
tcDecls = mapM h
  where
    handler decl (Error.Err ps msg) = throwError $ Error.Err ps (msg $$ msg' decl)
    msg' decl = disp [DS "When typechecking", DD decl]
    h decl = tcDecl decl `catchError` handler decl

-- | Typecheck a single declaration
-- Module aliases are desugared to modules
tcDecl :: Decl -> TcMonad CoreDecl
tcDecl (Def qn tm) = TimeStats.measureM "TypeCheck: Definitions" $ do
  oldDef <- Env.lookupQTyMaybe (toQualifiedT qn)
  if isJust oldDef
    then Env.err [DS "Duplicate definition for", DD qn]
    else do
      hint <- Env.lookupHint qn
      ty <- case hint of
        Nothing -> do Env.err [DS "Missing type for toplevel declaration", DD qn]
        Just ty -> do
          checkType tm ty
          return ty
      Env.extendQCtx qn ty
      Env.extendQDef qn tm
      return $ CoreDef qn tm
tcDecl (TypeSig (Sig qn ty)) = TimeStats.measureM "TypeCheck: Signatures" $ do
  hint <- Env.lookupHint qn
  hint' <- Env.lookupQTyMaybe (toQualifiedT qn)
  let hints = catMaybes [hint, hint']
  if null hints
    then do
      let n = baseName qn
      tcType ty
      Env.extendHints n ty
      return $ CoreTypeSig $ Sig qn ty
    else Env.err [DS "Duplicate type hint for:", DD qn]
tcDecl (Mod mp ts decls) = TimeStats.measureM ("TCMod:" ++ render (disp mp)) $ CoreModule mp ts <$> h
  where
    h =
      tcTeleScope
        ts
        ( do
            Env.addModule mp ts
            Env.pushLocation (last mp)
            decls' <- tcDecls decls
            Env.popLocation
            return decls'
        )
tcDecl (ModApply m1 m1params mp2 m2args) = TimeStats.measureM "TypeCheck: ModuleAliases" $ TimeStats.measureM ("TCAlias:" ++ render (disp m1)) $
  tcTeleScope
    m1params
    ( do
        -- Load the module that we are aliasing
        -- As mp2 can never be created from a substitutation as it is not a term and there are no user supplied Term-qualified names, 
        -- all of the definitions will be identity subsitutions and can thus be ignored
        (m2params, m2Sig, _) <- Env.lookupModule mp2
        -- Check that the arguments are valid.
        -- In the case of a partial application return the remaining parameters.
        -- Also return a list of substitutations because of dependent-typing
        (remainingTs, defs) <- Env.extendCtxs m1params $ validateArgs m2params m2args
        -- Apply the substitutions to the remaining types and assign fresh names
        remainingTs' <- mapM (\(n, t) -> do n' <- Unbound.fresh n; return (n', t)) $ updateTypes defs remainingTs
        -- Add any remaining parameters
        let args' = m2args ++ map (Var . fst) remainingTs'
        let m1params' = m1params ++ remainingTs'
        -- Apply all of the substitutions to the signature to produce the signature for the new module
        -- Create the definitions for the new module
        (newSig, decls) <- updateAndCreate defs m2Sig m1 mp2 args'
        Env.addModuleSig m1 m1params' newSig
        return $ CoreModule m1 m1params' decls
    )
  where
    -- | Create an updated signature as well as the new definitions created from the alias
    updateAndCreate :: (Unbound.Fresh m) => [(TName, Term)] -> ModSignature ->  ModPath -> ModPathT -> [Term] -> m (ModSignature, [CoreDecl])
    updateAndCreate defs s@ModSig {qCtx = ctx, modules = mods, qDefs = ds} new old args = do
      -- Deal with the nested modules
      res <- mapM (processMod defs new old args) $ Map.toAscList mods
      let (newMods, newModDecls) = unzip res
      -- Update the type-signatures with the definitins
      let ctx' = Map.map (updateType defs) ctx
      -- Generate new definitions and type signatures from the original types
      let decls = map (createDecl new old args) $ Map.toAscList ctx'
      -- Create the definitions for the environment
      let newQDefs = Map.fromAscList $ map (\(n, _, d) -> (baseName n, d)) decls
      -- Create the CoreDeclarations
      let coreDecls = newModDecls ++ concatMap (\(n, t, tm) -> [CoreTypeSig $ Sig n t, CoreDef n tm]) decls
      return (s {qCtx = ctx', modules = Map.fromAscList newMods, qDefs = newQDefs}, coreDecls)

    -- | Handles the telescope of nested modules then calls updateAndCreate to create the new values
    processMod defs new old args (name, (ts, sig)) = do
      -- Apply the definitions to the nested telescope
      let ts' = updateTypes defs ts
      -- Generate fresh naems
      ts'' <- mapM (\(n, t) -> do n' <- Unbound.fresh n; return (n', t)) ts'
      -- Have updateAndCreate create the new values
      (sig', decls) <- updateAndCreate defs sig (new ++ [name]) (old ++ [(name, map (Var . fst) ts'')]) args
      -- Wrap the values back into a module
      return ((name, (ts'', sig')), CoreModule (new ++ [name]) ts'' decls)

    updateTypes defs = map (second (updateType defs))
    updateType defs ty = foldr (\(n, tm) t -> Unbound.subst n tm t) ty defs

    -- | Creates the new name, a new type and a new definition. Later combined into a type sig and a definition
    createDecl :: ModPath -> ModPathT -> [Term] -> (TName, Type) -> (Qualified, Type, Term)
    createDecl newName oldName args (n, ty) = do
      let targetName = qualifyT oldName (CurrentT n)
      let name = qualify newName (Current n)
      let newDef = foldl App (QualifiedTerm targetName) args
      (name, ty, newDef)

    -- | Check that the provided arguments match with the telescope
    -- Not all parameters need to have an argument but we cannot have more arguments than types
    validateArgs :: TeleScope -> [Term] -> TcMonad (TeleScope, [(TName, Term)])
    validateArgs ts [] = return (ts, [])
    validateArgs [] xs = Env.err [DS "Too many arguments provided. ", DD xs, DS "were not needed"]
    validateArgs ((x, ty) : xs) (tm : ys) =
      let handler (Error.Err ps msg) = throwError $ Error.Err ps (msg $$ msg')
          msg' = disp [DS "When checing that", DD tm, DS "is a valid argument for the parameter", DD x, DS "of type", DD ty]
       in do
            checkType tm ty `catchError` handler
            (ts, defs) <- Env.extendDef x tm $ validateArgs xs ys
            return (ts, (x, tm) : defs)