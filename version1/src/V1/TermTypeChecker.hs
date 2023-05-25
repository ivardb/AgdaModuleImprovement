{- tc language -}

-- | The main routines for type-checking of terms
module V1.TermTypeChecker (inferType, checkType, tcType) where

import Control.Monad.State (void)
import qualified Unbound.Generics.LocallyNameless as Unbound
import qualified V1.Equal as Equal
import V1.PrettyPrint (D (..))
import V1.Syntax (Term (..), Type)
import V1.TcEnvironment.ModuleEnvironment (TcMonad)
import qualified V1.TcEnvironment.ModuleEnvironment as Env
import qualified V1.TcEnvironment.TermEnvironment as Env

-- | Infer/synthesize the type of a term
inferType :: Term -> TcMonad Type
inferType t = tcTerm t Nothing

-- | Check that the given term has the expected type
checkType :: Term -> Type -> TcMonad ()
checkType tm (Pos _ ty) = checkType tm ty -- ignore source positions/annotations
checkType tm (Ann ty _) = checkType tm ty
checkType tm ty = do
  nf <- Equal.whnf ty
  void $ tcTerm tm (Just nf)

-- | Make sure that the term is a "type" (i.e. that it has type 'Type')
tcType :: Term -> TcMonad ()
tcType tm = checkType tm Type

---------------------------------------------------------------------

-- | Combined type checking/inference function
-- The second argument is 'Just expectedType' in checking mode and 'Nothing' in inference mode
-- In either case, this function returns the type of the term
tcTerm :: Term -> Maybe Type -> TcMonad Type
-- i-var
tcTerm t@(Var x) Nothing = Env.lookupTy x
tcTerm (QualifiedTerm q) Nothing = Env.processQualified q
-- i-type
tcTerm Type Nothing = return Type
-- i-pi
tcTerm (Pi tyA bnd) Nothing = do
  (x, tyB) <- Unbound.unbind bnd
  tcType tyA
  Env.extendCtx x tyA (tcType tyB)
  return Type
-- c-lam: check the type of a function
tcTerm (Lam bnd) (Just (Pi tyA bnd2)) = do
  -- unbind the variables in the lambda expression and pi type
  (x, body, _, tyB) <- Unbound.unbind2Plus bnd bnd2

  -- check the type of the body of the lambda expression
  Env.extendCtx x tyA (checkType body tyB)
  return $ Pi tyA bnd2
tcTerm (Lam _) (Just nf) =
  Env.err [DS "Lambda expression should have a function type, not", DD nf]
-- i-app
tcTerm (App t1 t2) Nothing = do
  ty1 <- inferType t1
  (tyA, bnd) <- Equal.ensurePi ty1
  checkType t2 tyA
  return $ Unbound.instantiate bnd [t2]

-- i-ann
tcTerm (Ann tm ty) Nothing = do
  tcType ty
  checkType tm ty
  return ty

-- practicalities
-- remember the current position in the type checking monad
tcTerm (Pos p tm) mTy =
  Env.extendSourceLocation p tm $ tcTerm tm mTy
-- i-bool
tcTerm TyBool Nothing = return Type
-- i-true/false
tcTerm (LitBool b) Nothing = return TyBool
-- c-if
tcTerm t@(If (Var x) t2 t3) mty = do
  case mty of
    Just ty -> do
      checkType (Var x) TyBool
      Env.extendDefs [(x, LitBool True)] $ checkType t2 ty
      Env.extendDefs [(x, LitBool False)] $ checkType t3 ty
      return ty
    Nothing -> do
      checkType (Var x) TyBool
      ty <- inferType t2
      checkType t3 ty
      return ty
tcTerm t@(If t1 t2 t3) mty = do
  case mty of
    Just ty -> do
      checkType t1 TyBool
      checkType t2 ty
      checkType t3 ty
      return ty
    Nothing -> do
      checkType t1 TyBool
      ty <- inferType t2
      checkType t3 ty
      return ty
tcTerm TyUnit Nothing = return Type
tcTerm Unit Nothing = return TyUnit
-- c-infer
tcTerm tm (Just ty) = do
  ty' <- inferType tm
  Equal.equate ty' ty

  return ty'
tcTerm tm Nothing =
  Env.err [DS "Must have a type annotation to check", DD tm]