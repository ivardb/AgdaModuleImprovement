{- tc language -}

-- | Compare two terms for equality
module V0.Equal
  ( whnf,
    equate,
    ensurePi,
  )
where

import qualified Debug.TimeStats as TimingStats
import qualified Unbound.Generics.LocallyNameless as Unbound
import V0.PrettyPrint (D (..))
import V0.Syntax (TName, Term (..), Type)
import V0.TcEnvironment.ModuleEnvironment (TcMonad)
import qualified V0.TcEnvironment.ModuleEnvironment as Env
import qualified V0.TcEnvironment.TermEnvironment as Env

-- | compare two expressions for equality
-- first check if they are alpha equivalent then
-- if not, weak-head normalize and compare
-- throw an error if they cannot be matched up
equate :: Term -> Term -> TcMonad ()
equate t1 t2 | Unbound.aeq t1 t2 = return ()
equate t1 t2 = do
  n1 <- whnf t1
  n2 <- whnf t2
  case (n1, n2) of
    (Type, Type) -> return ()
    (Var x, Var y) | x == y -> return ()
    (QualifiedTerm q1, QualifiedTerm q2) | q1 == q2 -> return ()
    (Lam bnd1, Lam bnd2) -> do
      (_, b1, _, b2) <- Unbound.unbind2Plus bnd1 bnd2
      equate b1 b2
    (App a1 a2, App b1 b2) ->
      equate a1 b1 >> equate a2 b2
    (Pi tyA1 bnd1, Pi tyA2 bnd2) -> do
      (_, tyB1, _, tyB2) <- Unbound.unbind2Plus bnd1 bnd2
      equate tyA1 tyA2
      equate tyB1 tyB2
    (TyBool, TyBool) -> return ()
    (LitBool b1, LitBool b2) | b1 == b2 -> return ()
    (If a1 b1 c1, If a2 b2 c2) ->
      equate a1 a2 >> equate b1 b2 >> equate c1 c2
    (TyUnit, TyUnit) -> return ()
    (Unit, Unit) -> return ()
    (_, _) -> tyErr n1 n2
  where
    tyErr :: Term -> Term -> TcMonad ()
    tyErr n1 n2 = do
      gamma <- Env.getCtx
      gamma2 <- Env.getQCtx
      Env.err
        [ DS "Expected",
          DD n2,
          DS "but found",
          DD n1,
          DS "in type context:",
          DD gamma,
          DS "and decl context: ",
          DD gamma2
        ]

-------------------------------------------------------

-- | Ensure that the given type 'ty' is a 'Pi' type
-- (or could be normalized to be such) and return the components of
-- the type.
-- Throws an error if this is not the case.
ensurePi ::
  Type ->
  TcMonad (Type, Unbound.Bind TName Type)
ensurePi ty = do
  nf <- whnf ty
  case nf of
    (Pi tyA bnd) -> do
      return (tyA, bnd)
    _ -> do
      gamma <- Env.getQCtx
      Env.err [DS "Expected a function type, instead found", DD nf, DD gamma]

-------------------------------------------------------

-- | Convert a term to its weak-head normal form.
whnf :: Term -> TcMonad Term
whnf t = TimingStats.measureM "Total: WHNF" $ whnf' t

whnf' :: Term -> TcMonad Term
whnf' (Var x) = do
  maybeDef <- Env.lookupDef x
  case maybeDef of
    (Just d) -> whnf' d
    _ -> return (Var x)
whnf' (QualifiedTerm q) = do
  maybeDef <- Env.lookupQDef q
  case maybeDef of
    (Just d) -> whnf' d
    _ -> return (QualifiedTerm q)
whnf' (App t1 t2) = do
  nf <- whnf' t1
  case nf of
    (Lam bnd) -> do
      t2' <- whnf' t2
      whnf' (Unbound.instantiate bnd [t2'])
    _ -> do
      return (App nf t2)
whnf' (If t1 t2 t3) = do
  nf <- whnf' t1
  case nf of
    (LitBool bo) -> if bo then whnf' t2 else whnf' t3
    _ -> return (If nf t2 t3)

-- ignore/remove type annotations and source positions when normalizing
whnf' (Ann tm _) = whnf' tm
whnf' (Pos _ tm) = whnf' tm
-- all other terms are already in whnf'
-- don't do anything special for them
whnf' tm = return tm
