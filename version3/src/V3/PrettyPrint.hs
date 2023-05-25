{- tc language -}

-- | A Pretty Printer.
module V3.PrettyPrint (Disp (..), D (..), SourcePos, PP.Doc, PP.render, Display (..), DispInfo (..), defaultDI, withIndent) where

import Control.Monad.Reader (MonadReader (ask, local), asks)
import Data.Foldable (foldrM)
import Data.List (intercalate, intersperse)
import qualified Data.Set as S
import Text.ParserCombinators.Parsec.Error (ParseError)
import Text.ParserCombinators.Parsec.Pos (SourcePos, sourceColumn, sourceLine, sourceName)
import Text.PrettyPrint (Doc, ($$), (<+>))
import qualified Text.PrettyPrint as PP
import qualified Unbound.Generics.LocallyNameless as Unbound
import Unbound.Generics.LocallyNameless.Internal.Fold (toListOf)
import V3.Syntax

-------------------------------------------------------------------------

-- * Classes and Types for Pretty Printing

-------------------------------------------------------------------------

-- | The 'Disp' class governs all types which can be turned into 'Doc's
-- The `disp` function is the entry point for the pretty printer
class Disp d where
  disp :: d -> Doc
  default disp :: (Display d) => d -> Doc
  disp d = display d defaultDI

-- | The 'Display' class is like the 'Disp' class. It qualifies
--   types that can be turned into 'Doc'.  The difference is that the
--   this uses the 'DispInfo' parameter and the Unbound library
--   to generate fresh names.
class (Unbound.Alpha t) => Display t where
  -- | Convert a value to a 'Doc'.
  display :: t -> DispInfo -> Doc

-- | The data structure for information about the display
data DispInfo = DI
  { -- | should we show the annotations?
    showAnnots :: Bool,
    -- | names that have been used
    dispAvoid :: S.Set Unbound.AnyName,
    -- | current precedence level
    prec :: Int,
    indent :: Int
  }

defaultDI :: DispInfo
defaultDI = (DI {showAnnots = True, dispAvoid = S.empty, prec = 0, indent = 0})

-- | Error message quoting
data D
  = -- | String literal
    DS String
  | -- | Displayable value
    forall a. Disp a => DD a

-------------------------------------------------------------------------

-- * Disp Instances for quoting, errors, source positions, names

-------------------------------------------------------------------------

instance Disp D where
  disp (DS s) = PP.text s
  disp (DD d) = PP.nest 2 $ disp d

instance Disp [D] where
  disp dl = PP.sep $ map disp dl

instance Disp ParseError where
  disp = PP.text . show

instance Disp SourcePos where
  disp p =
    PP.text (sourceName p) PP.<> PP.colon PP.<> PP.int (sourceLine p)
      PP.<> PP.colon
      PP.<> PP.int (sourceColumn p)
      PP.<> PP.colon

instance Disp (Unbound.Name Term) where
  disp name = PP.text (Unbound.name2String name)

instance Disp UTeleScope where
  disp [] = PP.text ""
  disp ((n, Unbound.Embed ty) : xs) = PP.text "(" PP.<> disp n PP.<> PP.text ": " PP.<> disp ty PP.<> PP.text ")" PP.<> disp xs

instance Disp TeleScope where
  disp [] = PP.text ""
  disp ((n, ty) : xs) = PP.text "(" PP.<> disp n PP.<> PP.text ": " PP.<> disp ty PP.<> PP.text ")" PP.<> disp xs

-------------------------------------------------------------------------

-- * Disp Instances for Term syntax (defaults to Display, see below)

-------------------------------------------------------------------------

instance Disp Term

instance Disp UModule

instance Disp Qualified

instance Disp QualifiedT

instance Disp ModuleImport

instance Disp ModPathT

instance Disp UDecl

instance Disp Module

instance Disp Decl

------------------------------------------------------------------------

-- * Disp Instances for Modules

-------------------------------------------------------------------------

instance Disp [UDecl] where
  disp = PP.vcat . map disp

instance Disp ModPath where
  disp m = PP.text $ intercalate "." m

instance Disp Sig where
  disp (Sig n ty) = disp n <+> PP.text ":" <+> disp ty

-------------------------------------------------------------------------

-- * Disp Instances for Prelude types

-------------------------------------------------------------------------

instance Disp String where
  disp = PP.text

instance Disp Int where
  disp = PP.text . show

instance Disp Integer where
  disp = PP.text . show

instance Disp Double where
  disp = PP.text . show

instance Disp Float where
  disp = PP.text . show

instance Disp Char where
  disp = PP.text . show

instance Disp Bool where
  disp = PP.text . show

instance Disp a => Disp (Maybe a) where
  disp (Just a) = PP.text "Just" <+> disp a
  disp Nothing = PP.text "Nothing"

instance (Disp a, Disp b) => Disp (Either a b) where
  disp (Left a) = PP.text "Left" <+> disp a
  disp (Right a) = PP.text "Right" <+> disp a

instance (Disp a, Disp b) => Disp (a, b) where
  disp (a, b) = PP.text "(" <> disp a <> PP.text ", " <> disp b <> PP.text ")"

instance {-# OVERLAPPABLE #-} (Disp a) => Disp [a] where
  disp as = PP.vcat (map disp as)

-------------------------------------------------------------------------

-- * Display instances for Prelude types used in AST

-------------------------------------------------------------------------

instance Display String where
  display = return . PP.text

instance Display Int where
  display = return . PP.text . show

instance Display Integer where
  display = return . PP.text . show

instance Display Double where
  display = return . PP.text . show

instance Display Float where
  display = return . PP.text . show

instance Display Char where
  display = return . PP.text . show

instance Display Bool where
  display = return . PP.text . show

-------------------------------------------------------------------------

-- * Display class instances for Terms

-------------------------------------------------------------------------

levelApp :: Int
levelApp = 10

levelIf :: Int
levelIf = 0

levelLet :: Int
levelLet = 0

levelCase :: Int
levelCase = 0

levelLam :: Int
levelLam = 0

levelPi :: Int
levelPi = 0

levelSigma :: Int
levelSigma = 0

levelProd :: Int
levelProd = 0

levelArrow :: Int
levelArrow = 5

withPrec :: MonadReader DispInfo m => Int -> m a -> m a
withPrec p = local (\d -> d {prec = p})

withIndent :: MonadReader DispInfo m => Int -> m a -> m a
withIndent p = local (\d -> d {indent = p})

parens :: Bool -> Doc -> Doc
parens b = if b then PP.parens else id

brackets :: Bool -> Doc -> Doc
brackets b = if b then PP.brackets else id

instance Display UModule where
  display (UModule n imps bind) = do
    Unbound.lunbind bind $ \(ts, decls) -> do
      i <- indent
      dmi <- withIndent 4 $ mapM display imps
      dme <- withIndent 4 $ mapM display decls
      return $
        PP.text (replicate i ' ')
          <> ( PP.text "module " <> disp n <> (disp (Unbound.unrec ts) <+> PP.text "where")
                $$ PP.vcat dmi
                $$ PP.vcat dme
            )

instance Display ModuleImport where
  display (ModuleImport i) = do
    ind <- indent
    return $ PP.text (replicate ind ' ') <> (PP.text "import" <+> disp i)

instance Display UDecl where
  display (UDef n term) = do
    ind <- indent
    return $ PP.text (replicate ind ' ') <> (disp (Current n) <+> PP.text "=" <+> disp term)
  display (UTypeSig sig) = do
    ind <- indent
    return $ PP.text (replicate ind ' ') <> disp sig
  display (UMod n bind) = do
    Unbound.lunbind bind $ \(ts, decls) -> do
      i <- indent
      dme <- withIndent 4 $ mapM display decls
      return $
        PP.text (replicate i ' ')
          <> ( PP.text "module " <> disp n <> (disp (Unbound.unrec ts) <+> PP.text "where")
                $$ PP.vcat dme
            )
  display (UModApply n bind) = do
    Unbound.lunbind bind $ \(ts, (m2, args)) -> do
      i <- indent
      da <- dispModArgs args
      return $
        PP.text (replicate i ' ')
          <> PP.text "module " <> disp n <> (disp (Unbound.unrec ts) <+> PP.text "=" <+> disp m2 <+> da)

dispModArgs :: [Term] -> DispInfo -> Doc
dispModArgs args = do
  foldrM h (PP.text "") args
  where
    h t d = do
      dt <- withPrec levelApp (display t)
      return $ (PP.text "(" <> dt <> PP.text")") <+> d

instance Display Module where
  display (Module mp imps ts decls) = do
    i <- indent
    dmi <- withIndent 4 $ mapM display imps
    dme <- withIndent 4 $ mapM display decls
    return $
      PP.text (replicate i ' ')
        <> ( PP.text "module " <> disp mp <> (disp ts <+> PP.text "where")
               $$ PP.vcat dmi
               $$ PP.vcat dme
           )

instance Display Decl where
  display (Def n term) = do
    ind <- indent
    return $ PP.text (replicate ind ' ') <> (disp n <+> PP.text "=" <+> disp term)
  display (TypeSig sig) = do
    ind <- indent
    return $ PP.text (replicate ind ' ') <> disp sig
  display (Mod n ts decls) = display (Module n [] ts decls)
  display (ModApply m param m2 args) = do
    ind <- indent
    da <- dispModArgs args
    return $ PP.text (replicate ind ' ') <> (PP.text "module" <+> disp m <+> disp param <+> PP.text "=" <+> disp m2 <+> da)
    
instance Display (Unbound.Name Term) where
  display = return . disp

instance Display Qualified where
  display (Current v) = do
    display $ Unbound.name2String v
  display (Q mn q) = do
    dmn <- display mn
    dq <- display q
    return $ dmn PP.<> (PP.text "." PP.<> dq)

instance Display QualifiedT where
  display (CurrentT v) = do
    display $ Unbound.name2String v
  display (QT mn [] q) = do
    dmn <- display mn
    dq <- display q
    return $ dmn PP.<> (PP.text "." PP.<> dq)
  display (QT mn ts q) = do
    dmn <- display mn
    dq <- display q
    da <- dispModArgs ts
    return $ PP.text "(" PP.<> (dmn PP.<+> da) PP.<> PP.text ")." PP.<> dq

instance Display ModPathT where
  display ms = do
    dms <- mapM h ms
    return $ PP.hcat $ intersperse (PP.text ".") dms
    where
      h (m, []) = do
        return $ PP.text m
      h (m, a) = do
        da <- dispModArgs a
        return $ PP.text "(" PP.<> (PP.text m PP.<+> da) PP.<> PP.text ")"

instance Display Term where
  display Type = return $ PP.text "Type"
  display (Var n) = display n
  display (QualifiedTerm q) = do display q
  display a@(Lam b) = do
    n <- ask prec
    (binds, body) <- withPrec levelLam $ gatherBinders a
    return $ parens (levelLam < n) $ PP.text "\\" PP.<> PP.sep binds PP.<> PP.text "." <+> body
  display (App f x) = do
    n <- ask prec
    df <- withPrec levelApp (display f)
    dx <- withPrec (levelApp + 1) (display x)
    return $ parens (levelApp < n) $ df <+> dx
  display (Pi a bnd) = do
    Unbound.lunbind bnd $ \(n, b) -> do
      p <- ask prec
      lhs <-
        if n `elem` toListOf Unbound.fv b
          then do
            dn <- display n
            da <- withPrec 0 (display a)
            return $ PP.parens (dn <+> PP.colon <+> da)
          else withPrec (levelArrow + 1) (display a)
      db <- withPrec levelPi (display b)
      return $ parens (levelArrow < p) $ lhs <+> PP.text "->" <+> db
  display (Ann a b) = do
    sa <- ask showAnnots
    if sa
      then do
        da <- withPrec 0 (display a)
        db <- withPrec 0 (display b)
        return $ PP.parens (da <+> PP.text ":" <+> db)
      else display a
  display (Pos _ e) = display e
  display TyBool = return $ PP.text "Bool"
  display (LitBool b) = return $ if b then PP.text "True" else PP.text "False"
  display (If a b c) = do
    p <- ask prec
    da <- withPrec 0 $ display a
    db <- withPrec 0 $ display b
    dc <- withPrec 0 $ display c
    return $
      parens (levelIf < p) $
        PP.text "if" <+> da <+> PP.text "then" <+> db
          <+> PP.text "else"
          <+> dc
  display TyUnit = return $ PP.text "Unit"
  display Unit = return $ PP.text "1"

-------------------------------------------------------------------------

-- * Helper functions for displaying terms

-------------------------------------------------------------------------

gatherBinders :: Term -> DispInfo -> ([Doc], Doc)
gatherBinders (Lam b) =
  Unbound.lunbind b $ \(n, body) -> do
    dn <- display n
    let db = dn
    (rest, body') <- gatherBinders body
    return (db : rest, body')
gatherBinders body = do
  db <- display body
  return ([], db)

-------------------------------------------------------------------------

-- * LFresh instance for DisplayInfo reader monad

-------------------------------------------------------------------------

instance Unbound.LFresh ((->) DispInfo) where
  -- Fresh names are already inserted during typechecking so the names can be kept
  lfresh nm = return nm

  getAvoids = asks dispAvoid
  avoid names = local upd
    where
      upd di =
        di
          { dispAvoid =
              S.fromList names `S.union` dispAvoid di
          }