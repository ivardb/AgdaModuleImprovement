module V3.ModuleTypeChecker (tcModule, verifyCore) where

import Control.Monad (void)
import Control.Monad.Except (catchError, throwError)
import Text.PrettyPrint (($$))
import V3.Core.Syntax (Core)
import V3.Error (ErrorMonad)
import qualified V3.Error as Error
import V3.PrettyPrint ( D(..), Disp(disp), render )
import V3.Syntax (Decl (..), Module (..), Sig (Sig), TName, TeleScope, Term, Type)
import V3.TcEnvironment.ModuleEnvironment (TcMonad, emptyState)
import qualified V3.TcEnvironment.ModuleEnvironment as Env
import qualified V3.TcEnvironment.TermEnvironment as Env
import V3.TermTypeChecker (checkType, tcType)
import qualified Debug.TimeStats as TimeStats

-- | Typecheck the core given previously imported cores
verifyCore :: [Core] -> Core -> ErrorMonad ()
verifyCore cores c = void $ Env.runTcMonadState emptyState $ tcModule cores c

-- | Type check a module to a list of declarations.
-- The list of cores will be added to the top level module
tcModule :: [Core] -> Module -> TcMonad Core
tcModule cores m@(Module name imp ts decls) = do
  TimeStats.measureM "TypeCheck: Initialise typing env" $ Env.initialise cores m
  tcTeleScope ts (do Env.pushLocation (last name); tcDecls decls)
  return m

-- | Typecheck the entire telescope, automatically scoping the variables for the remainder.
-- At the end perform the passed computation with the whole telescope in scope
tcTeleScope :: TeleScope -> TcMonad a -> TcMonad a
tcTeleScope ts cont = foldr (\(n, ty) m -> do tcType ty; Env.extendCtx n ty m) cont ts

-- | Typecheck a list of declarations
-- Just a map with some error reporting
tcDecls :: [Decl] -> TcMonad ()
tcDecls = mapM_ h
  where
    handler decl (Error.Err ps msg) = throwError $ Error.Err ps (msg $$ msg' decl)
    msg' decl = disp [DS "When typechecking", DD decl]
    h decl = tcDecl decl `catchError` handler decl

-- | Typecheck a single declaration
-- Module aliases are desugared to modules
tcDecl :: Decl -> TcMonad ()
tcDecl (Def qn tm) = TimeStats.measureM "TypeCheck: Definitions" $ do
  hint <- Env.lookupHint qn
  case hint of
        Nothing -> do Env.err [DS "Missing type for toplevel declaration", DD qn]
        Just ty -> do
          checkType tm ty
tcDecl (TypeSig (Sig qn ty)) = TimeStats.measureM "TypeCheck: Signatures" $ tcType ty
tcDecl (Mod mp ts decls) = TimeStats.measureM ("TCMod:" ++ render (disp mp)) $ tcTeleScope ts (do Env.pushLocation (last mp); tcDecls decls; Env.popLocation)
tcDecl (ModApply m1 params m2 args) = TimeStats.measureM "TypeCheck: ModuleAliases" $ TimeStats.measureM ("TCAlias:" ++ render (disp m1)) $
  tcTeleScope
    params
    ( do
        m2params <- Env.lookupTeleScope m2
        validateArgs m2params args
    )
  where
    -- Check that the terms are valid arguments to the types
    validateArgs :: [(TName, Type)] -> [Term] -> TcMonad ()
    validateArgs _ [] = return ()
    validateArgs [] xs = Env.err [DS "Too many arguments provided. ", DD xs, DS "were not needed"]
    validateArgs ((x, ty) : xs) (tm : ys) =
      let handler (Error.Err ps msg) = throwError $ Error.Err ps (msg $$ msg')
          msg' = disp [DS "When checing that", DD tm, DS "is a valid argument for the parameter", DD x, DS "of type", DD ty]
       in do
            checkType tm ty `catchError` handler
            Env.extendDef x tm $ validateArgs xs ys