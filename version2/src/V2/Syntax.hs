{- tc language -}
{-# LANGUAGE TypeFamilies #-}

-- | The abstract syntax of the simple dependently typed language
-- See comment at the top of 'Parser' for the concrete syntax of this language
module V2.Syntax where

import Control.DeepSeq (NFData)
import Data.Function (on)
import Data.Maybe (fromMaybe, listToMaybe)
import Data.Typeable (Typeable)
import GHC.Generics (Generic (..), from)
import Text.ParserCombinators.Parsec.Pos (SourcePos, initialPos, newPos, sourceColumn, sourceLine, sourceName)
import qualified Unbound.Generics.LocallyNameless as Unbound

-----------------------------------------

-- * Names

-----------------------------------------

-- | For variable names, we use the Unbound library to
-- automatically generate free variable, substitution,
-- and alpha-equality function.
-- also used for qualified names as before scope checking
-- a variable can refer to both a definition and a bound variable
type TName = Unbound.Name Term

-- | module names
type MName = String

-----------------------------------------

-- * Core language

-----------------------------------------

-- | Combined syntax for types and terms
-- (type synonym for documentation)
type Type = Term

-- | basic language
data Term
  = -- | type of types  `Type`
    Type
  | -- | variables  `x`
    Var TName
  | -- | Path to var, introduced in scope checking
    QualifiedTerm QualifiedT
  | -- | abstraction  `\x. a`
    Lam (Unbound.Bind TName Term)
  | -- | application `a b`
    App Term Term
  | -- | function type   `(x : A) -> B`
    Pi Type (Unbound.Bind TName Type)
  | -- | annotated terms `( a : A )`
    Ann Term Type
  | -- | marked source position, for error messages
    Pos SourcePos Term
  | -- | the type with two inhabitants (homework) `Bool`
    TyBool
  | -- | `True` and `False`
    LitBool Bool
  | -- | `if a then b1 else b2` expression for eliminating booleans
    If Term Term Term
  | -- | the unit type
    TyUnit
  | -- | the unique unit element
    Unit
  deriving (Show, Generic, NFData)

-- | Conversion trick for making SourcePos generic as we do not have access to its definition and can thus not derive it
instance (Generic (String, Int, Int)) => Generic SourcePos where
  type Rep SourcePos = Rep (String, Int, Int)
  from s = from (sourceName s, sourceLine s, sourceColumn s)
  to r = let (s, i, i2) = to r in newPos s i i2

instance NFData SourcePos

-- | Qualified names. Used to name definitions
data Qualified = Q MName Qualified | Current TName
  deriving (Show, Generic, Typeable, Ord, Eq, NFData)
  deriving anyclass (Unbound.Alpha, Unbound.Subst Term)

-- | Term-qualified names. Inserted by the scope-checker. The terms are simply the parameters of the module provided as arguments
-- This is needed to make sure that substitution from module aliases and WHNF evaluation works.
data QualifiedT = QT MName [Term] QualifiedT | CurrentT TName
  deriving (Show, Generic, Typeable, NFData)
  deriving anyclass (Unbound.Alpha, Unbound.Subst Term)

toQualified :: QualifiedT -> Qualified
toQualified (CurrentT x) = Current x
toQualified (QT m _ q) = Q m $ toQualified q

toQualifiedT :: Qualified -> QualifiedT
toQualifiedT (Current x) = CurrentT x
toQualifiedT (Q m q) = QT m [] $ toQualifiedT q

split :: Qualified -> (ModPath, TName)
split q = h q []
  where
    h (Current n) acc = (acc, n)
    h (Q mn qn) acc = h qn (acc ++ [mn])

baseName :: Qualified -> TName
baseName = snd . split

splitT :: QualifiedT -> (ModPathT, TName)
splitT q = h q []
  where
    h (CurrentT n) acc = (acc, n)
    h (QT mn ts qn) acc = h qn (acc ++ [(mn, ts)])

baseNameT :: QualifiedT -> TName
baseNameT = snd . splitT

-----------------------------------------

-- * Modules and declarations

-----------------------------------------

-- | References to other modules (brings declarations and definitions into scope)
newtype ModuleImport = ModuleImport MName
  deriving (Show, Eq, Generic, Typeable, NFData)
  deriving anyclass (Unbound.Alpha, Unbound.Subst Term)

-- | A Module has a name, a list of imports and a list of declarations bound under a telescope
data UModule = UModule MName [ModuleImport] (Unbound.Bind (Unbound.Rec UTeleScope) [UDecl])
  deriving (Show, Generic, Typeable, NFData)
  deriving anyclass (Unbound.Alpha, Unbound.Subst Term)

-- | Declarations using Unbound. This is what we originially parse to, to create unique names.
-- However it is not possible to traverse multiple times nor can we use Unbound in our environment as Maps are not supported
-- while we do want to use those for performance. So we switch to Decl after scopechecking inserts unique names.
-- This works as qualified names already disambiguate qualified names
-- and parameters only need to be unique within a file as they can only appear in another file
-- if they are used in a declaration which will use Unbound binds anyways.
data UDecl
  = -- | Declaration for the type of a term
    UTypeSig Sig
  | -- | The definition of a particular name, must
    -- already have a type declaration in scope
    UDef TName Term
  | -- | A nested module definition
    UMod MName (Unbound.Bind (Unbound.Rec UTeleScope) [UDecl])
  | -- | A module alias
    UModApply MName (Unbound.Bind (Unbound.Rec UTeleScope) (ModPathT, [Term]))
  deriving (Show, Generic, Typeable, NFData)
  deriving anyclass (Unbound.Alpha, Unbound.Subst Term)

-- | A type declaration (or type signature)
data Sig = Sig {sigName :: Qualified, sigType :: Type}
  deriving (Show, Generic, Typeable, NFData, Unbound.Alpha, Unbound.Subst Term)

-- | Alias for module telescopes
type UTeleScope = [(TName, Unbound.Embed Type)]

-- | Used for module apply and imports.
type ModPath = [MName]

-- | A term-qualified module name
type ModPathT = [(MName, [Term])]

-- | Module with fully qualified names and without unbound at declaration level
data Module = Module ModPath [ModuleImport] TeleScope [Decl]
  deriving (Show, Generic, Typeable, NFData)
  deriving anyclass (Unbound.Alpha, Unbound.Subst Term)

-- | Declarations without using unbound.
data Decl
  = -- | Declaration for the type of a term
    TypeSig Sig
  | -- | The definition of a particular name, must
    -- already have a type declaration in scope
    Def Qualified Term
  | -- | A nested module definition
    Mod ModPath TeleScope [Decl]
  | -- | A module alias
    ModApply ModPath TeleScope ModPathT [Term]
  deriving (Show, Generic, Typeable, NFData)
  deriving anyclass (Unbound.Alpha, Unbound.Subst Term)

type TeleScope = [(TName, Type)]

-- | A class for anything that is qualified by MNames
class ModQualified a where
  -- | Wrap a with the given MName
  wrap :: MName -> a -> a

  -- | Get the outermost MName if it exists
  peek :: a -> Maybe MName

  -- | Remove the outermost MName if possible
  unwrap :: a -> Maybe a

  -- | Remove the outermost MName and return it if possible
  pop :: a -> Maybe (MName, a)
  pop a = do
    n <- peek a
    q <- unwrap a
    return (n, q)

  -- | Qualify a with the list of MNames
  -- The first MName will be wrapped last
  qualify :: [MName] -> a -> a
  qualify path a = foldr wrap a path

  -- | If a starts with ModPath return the remainder
  match :: ModPath -> a -> Maybe a
  match [] q = pure q
  match (x : xs) q = do
    (n, s) <- pop q
    if x == n then match xs s else Nothing

  -- | If the name matches the first path, change it to the second, otherwise identity
  rename :: ModPath -> ModPath -> a -> a
  rename m1 m2 a = maybe a (qualify m2) (match m1 a)

instance ModQualified ModPath where
  wrap = (:)

  peek = listToMaybe

  unwrap [] = Nothing
  unwrap (_ : xs) = Just xs

instance ModQualified Qualified where
  wrap = Q

  peek (Current _) = Nothing
  peek (Q m _) = Just m

  unwrap (Current _) = Nothing
  unwrap (Q _ q) = Just q

-- | Same as ModQualified but for Term-qualified names
class ModQualifiedT a where
  -- | Wrap a with the given MName
  wrapT :: (MName, [Term]) -> a -> a

  -- | Get the outermost MName if it exists
  peekT :: a -> Maybe (MName, [Term])

  -- | Remove the outermost MName if possible
  unwrapT :: a -> Maybe a

  -- | Remove the outermost MName and return it if possible
  popT :: a -> Maybe ((MName, [Term]), a)
  popT a = do
    n <- peekT a
    q <- unwrapT a
    return (n, q)

  -- | Qualify a with the list of MNames
  -- The first MName will be wrapped last
  qualifyT :: ModPathT -> a -> a
  qualifyT path a = foldr wrapT a path

  -- | If a starts with ModPath return the remainder
  matchT :: ModPath -> a -> Maybe a
  matchT [] q = pure q
  matchT (x : xs) q = do
    (n, s) <- popT q
    if x == fst n then matchT xs s else Nothing

  -- | If the name matches the first path, change it to the second, otherwise identity
  renameT :: ModPath -> ModPathT -> a -> a
  renameT m1 m2 a = maybe a (qualifyT m2) (matchT m1 a)

instance ModQualifiedT ModPathT where
  wrapT = (:)

  peekT = listToMaybe

  unwrapT [] = Nothing
  unwrapT (_ : xs) = Just xs

instance ModQualifiedT QualifiedT where
  wrapT = uncurry QT

  peekT (CurrentT _) = Nothing
  peekT (QT m t _) = Just (m, t)

  unwrapT (CurrentT _) = Nothing
  unwrapT (QT _ _ q) = Just q

-- * Auxiliary functions on syntax

-- | Default name for '_' occurring in patterns
wildcardName :: TName
wildcardName = Unbound.string2Name "_"

-- | Partial inverse of Pos
unPos :: Term -> Maybe SourcePos
unPos (Pos p _) = Just p
unPos _ = Nothing

-- | Tries to find a Pos inside a term, otherwise just gives up.
unPosFlaky :: Term -> SourcePos
unPosFlaky t = fromMaybe (newPos "unknown location" 0 0) (unPos t)

-----------------

-- We use the unbound-generics library to mark the binding occurrences of
-- variables in the syntax. That allows us to automatically derive
-- functions for alpha-equivalence, free variables and substitution
-- using generic programming.

------------------

-- * Alpha equivalence and free variables

-- Among other things, the Alpha class enables the following
-- functions:
--    -- Compare terms for alpha equivalence
--    aeq :: Alpha a => a -> a -> Bool
--    -- Calculate the free variables of a term
--    fv  :: Alpha a => a -> [Unbound.Name a]
--    -- Destruct a binding, generating fresh names for the bound variables
--    unbind :: (Alpha p, Alpha t, Fresh m) => Bind p t -> m (p, t)

-- For Terms, we'd like Alpha equivalence to ignore
-- source positions and type annotations.
-- We can add these special cases to the definition of `aeq'`
-- and then defer all other cases to the generic version of
-- the function (Unbound.gaeq).

instance Unbound.Alpha Term where
  aeq' ctx (Ann a _) b = Unbound.aeq' ctx a b
  aeq' ctx a (Ann b _) = Unbound.aeq' ctx a b
  aeq' ctx (Pos _ a) b = Unbound.aeq' ctx a b
  aeq' ctx a (Pos _ b) = Unbound.aeq' ctx a b
  aeq' ctx a b = (Unbound.gaeq ctx `on` from) a b

---------------

-- * Substitution

-- The Subst class derives capture-avoiding substitution
-- It has two parameters because the sort of thing we are substituting
-- for may not be the same as what we are substituting into.

-- class Subst b a where
--    subst  :: Name b -> b -> a -> a       -- single substitution

instance Unbound.Subst Term Term where
  isvar (Var x) = Just (Unbound.SubstName x)
  isvar _ = Nothing

-----------------

-- * Source Positions

-- SourcePositions do not have an instance of the Generic class available
-- so we cannot automatically define their Alpha and Subst instances. Instead
-- we do so by hand here.
instance Unbound.Alpha SourcePos where
  aeq' _ _ _ = True
  fvAny' _ _ = pure
  open _ _ = id
  close _ _ = id
  isPat _ = mempty
  isTerm _ = mempty
  nthPatFind _ = mempty
  namePatFind _ = mempty
  swaps' _ _ = id
  freshen' _ x = return (x, mempty)
  lfreshen' _ x cont = cont x mempty
  acompare' _ _ _ = EQ

-- Substitutions ignore source positions
instance Unbound.Subst b SourcePos where subst _ _ = id; substs _ = id; substBvs _ _ = id

-- Internally generated source positions
internalPos :: SourcePos
internalPos = initialPos "internal"
