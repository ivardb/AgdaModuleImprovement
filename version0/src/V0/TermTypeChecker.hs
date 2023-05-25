{- tc language -}

-- | The main routines for type-checking of terms
module V0.TermTypeChecker (inferType, checkType, tcType) where

import qualified Unbound.Generics.LocallyNameless as Unbound
import qualified V0.Equal as Equal
import V0.PrettyPrint (D (..))
import V0.Syntax (Term (..), Type)
import V0.TcEnvironment.ModuleEnvironment (TcMonad)
import qualified V0.TcEnvironment.ModuleEnvironment as Env
import qualified V0.TcEnvironment.TermEnvironment as Env

-- | Infer/synthesize the type of a term
inferType :: Term -> TcMonad (Term, Type)
inferType t = tcTerm t Nothing

-- | Check that the given term has the expected type
checkType :: Term -> Type -> TcMonad Term
checkType tm (Pos _ ty) = checkType tm ty -- ignore source positions/annotations
checkType tm (Ann ty _) = checkType tm ty
checkType tm ty = do
  nf <- Equal.whnf ty
  fst <$> tcTerm tm (Just nf)

-- | Make sure that the term is a "type" (i.e. that it has type 'Type')
tcType :: Term -> TcMonad Term
tcType tm = checkType tm Type

---------------------------------------------------------------------

-- | Combined type checking/inference function
-- The second argument is 'Just expectedType' in checking mode and 'Nothing' in inference mode
-- In either case, this function returns the type of the term and the updated term
tcTerm :: Term -> Maybe Type -> TcMonad (Term, Type)
-- i-var
tcTerm t@(Var x) Nothing = (t,) <$> Env.lookupTy x
tcTerm (QualifiedTerm q) Nothing = do
  Env.processQualified q
-- i-type
tcTerm Type Nothing = return (Type, Type)
-- i-pi
tcTerm (Pi tyA bnd) Nothing = do
  (x, tyB) <- Unbound.unbind bnd
  tyA' <- tcType tyA
  tyB' <- Env.extendCtx x tyA' (tcType tyB)
  return (Pi tyA' (Unbound.bind x tyB'), Type)
-- c-lam: check the type of a function
tcTerm (Lam bnd) (Just (Pi tyA bnd2)) = do
  -- unbind the variables in the lambda expression and pi type
  (x, body, _, tyB) <- Unbound.unbind2Plus bnd bnd2

  -- check the type of the body of the lambda expression
  body' <- Env.extendCtx x tyA (checkType body tyB)
  return (Lam $ Unbound.bind x body', Pi tyA bnd2)
tcTerm (Lam _) (Just nf) =
  Env.err [DS "Lambda expression should have a function type, not", DD nf]
-- i-app
tcTerm (App t1 t2) Nothing = do
  (t1', ty1) <- inferType t1
  (tyA, bnd) <- Equal.ensurePi ty1
  t2' <- checkType t2 tyA
  return (App t1' t2', Unbound.instantiate bnd [t2'])

-- i-ann
tcTerm (Ann tm ty) Nothing = do
  ty' <- tcType ty
  tm' <- checkType tm ty'
  return (Ann tm' ty', ty')

-- practicalities
-- remember the current position in the type checking monad
tcTerm (Pos p tm) mTy =
  Env.extendSourceLocation p tm $ tcTerm tm mTy
-- i-bool
tcTerm TyBool Nothing = return (TyBool, Type)
-- i-true/false
tcTerm (LitBool b) Nothing = return (LitBool b, TyBool)
-- c-if
tcTerm t@(If (Var x) t2 t3) mty = do
  case mty of
    Just ty -> do
      t1' <- checkType (Var x) TyBool
      t2' <- Env.extendDefs [(x, LitBool True)] $ checkType t2 ty
      t3' <- Env.extendDefs [(x, LitBool False)] $ checkType t3 ty
      return (If t1' t2' t3', ty)
    Nothing -> do
      t1' <- checkType (Var x) TyBool
      (t2', ty) <- inferType t2
      t3' <- checkType t3 ty
      return (If t1' t2' t3', ty)
tcTerm t@(If t1 t2 t3) mty = do
  case mty of
    Just ty -> do
      t1' <- checkType t1 TyBool
      t2' <- checkType t2 ty
      t3' <- checkType t3 ty
      return (If t1' t2' t3', ty)
    Nothing -> do
      t1' <- checkType t1 TyBool
      (t2', ty) <- inferType t2
      t3' <- checkType t3 ty
      return (If t1' t2' t3', ty)

-- i-Unit
tcTerm TyUnit Nothing = return (TyUnit, Type)
-- i-1
tcTerm Unit Nothing = return (Unit, TyUnit)
-- c-infer
tcTerm tm (Just ty) = do
  (tm', ty') <- inferType tm
  Equal.equate ty' ty

  return (tm', ty')
tcTerm tm Nothing =
  Env.err [DS "Must have a type annotation to check", DD tm]