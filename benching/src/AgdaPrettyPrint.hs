module AgdaPrettyPrint where

import Control.Monad.Except (runExceptT)
import Control.Monad.Reader (local)
import Data.List (intercalate)
import qualified Data.Set as Set
import System.Directory (createDirectoryIfMissing, listDirectory)
import System.FilePath (replaceExtension, takeExtension, (</>))
import Text.PrettyPrint (Doc, ($$), (<+>))
import qualified Text.PrettyPrint as PP
import qualified Unbound.Generics.LocallyNameless as Unbound
import qualified Unbound.Generics.LocallyNameless.Unsafe as Unbound
import V0.Parser (parseModuleFile)
import V0.Syntax

-- | Take all simple agda files from the source folder and pretty-print them to Agda in the destination folder
ppMain :: FilePath -> FilePath -> IO ()
ppMain source destination = do
  createDirectoryIfMissing True destination
  fs <- listDirectory source
  let fs' = filter ((== ".sa") . takeExtension) fs
  mapM_
    ( \f -> do
        contents <- runExceptT $ parseModuleFile (source </> f)
        newContents <- case contents of
          Left pe -> error $ show pe
          Right um -> return $ PP.render $ toAgda um
        writeFile (destination </> replaceExtension f "agda") newContents
    )
    fs'

-- | Pretty-print a module to Agda
toAgda :: UModule -> Doc
toAgda (UModule n imps bind) = PP.text "module" <+> PP.text n <+> tsToAgda (Unbound.unrec ts) <+> PP.text "where" PP.$$ PP.vcat [imps', defaults, decls']
  where
    (ts, decls) = Unbound.unsafeUnbind bind
    -- | Definitions required to represent Simple Agda primitives
    defaults =
      PP.text $
        unlines $
          map
            (indentString 4)
            ( ( if null imps
                  then
                    [ "data Bool : Set where",
                      "   true false : Bool",
                      "{-# BUILTIN BOOL  Bool  #-}",
                      "{-# BUILTIN FALSE false #-}",
                      "{-# BUILTIN TRUE  true  #-}",
                      "",
                      "record ⊤ : Set where",
                      "   instance constructor tt",
                      "{-# BUILTIN UNIT ⊤ #-}",
                      ""
                    ]
                  else []
              )
                ++ [ "infixl 0 _∋_",
                     "_∋_ : ∀{i}(A : Set i) → A → A",
                     "A ∋ x = x",
                     "",
                     "infix 0 if_then_else_",
                     "if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A",
                     "if true  then t else f = t",
                     "if false then t else f = f",
                     "",
                     "_$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B",
                     "f $ a = f a"
                   ]
            )
    imps' = importsToAgda 4 imps
    decls' = PP.vcat $ map (declToAgda 4) decls

-- | Indent a string as Agda is layout-sensitive
indentString :: Int -> String -> String
indentString i s = replicate i ' ' ++ s

-- | Convert the imports to Agda. If there is at least one import, add an open public for the primitives
importsToAgda :: Int -> [ModuleImport] -> Doc
importsToAgda _ [] = PP.empty
importsToAgda indent [ModuleImport n] = PP.vcat [importToAgda indent (ModuleImport n), PP.text (replicate indent ' ') <> (PP.text "open import" <+> PP.text n <+> PP.text "using (Bool; true; false; ⊤; tt) public")]
importsToAgda indent (imp : imps) = PP.vcat [importToAgda indent imp, importsToAgda indent imps]

-- | Convert an import statement with the provided indentation
importToAgda :: Int -> ModuleImport -> Doc
importToAgda indent (ModuleImport n) = PP.text (replicate indent ' ') <> (PP.text "import" <+> PP.text n)

-- | Convert a declaration to Agda with the provided indentation
declToAgda :: Int -> UDecl -> Doc
declToAgda indent (UTypeSig (Sig q ty)) = PP.text (replicate indent ' ') <> (qualifiedToAgda q <+> PP.text ":" <+> termToAgda ty)
declToAgda indent (UDef qn tm) = PP.text (replicate indent ' ') <> (PP.text (show qn) <+> PP.text "=" <+> termToAgda tm)
declToAgda indent (UMod n bind) = PP.text (replicate indent ' ') <> (PP.text "module" <+> PP.text n <+> tsToAgda (Unbound.unrec ts) <+> PP.text "where" PP.$$ decls')
  where
    (ts, decls) = Unbound.unsafeUnbind bind
    decls' = PP.vcat $ map (declToAgda 4) decls
declToAgda indent (UModApply m bind) = PP.text (replicate indent ' ') <> (PP.text "module" <+> PP.text m <+> tsToAgda (Unbound.unrec ts) <+> PP.text "=" <+> PP.text (intercalate "." mp2) <+> termsToAgda args)
  where
    (ts, (mp2, args)) = Unbound.unsafeUnbind bind

-- | Convert a telescope to Agda
tsToAgda :: UTeleScope -> Doc
tsToAgda [] = PP.text ""
tsToAgda ((n, Unbound.Embed ty) : ts) = PP.text "(" <+> PP.text (Unbound.name2String n) <+> PP.text ":" <+> termToAgda ty <+> PP.text ")" <+> tsToAgda ts

-- | Convert a list of terms to Agda with parenthesis around each term
termsToAgda :: [Term] -> Doc
termsToAgda [] = PP.text ""
termsToAgda (x : xs) = PP.text "(" <+> termToAgda x <+> PP.text ")" <+> termsToAgda xs

-- | Convert a term to Agda
termToAgda :: Term -> Doc
termToAgda Type = PP.text "Set"
termToAgda (Var x) = PP.text $ show x
termToAgda (QualifiedTerm q) = qualifiedToAgda q
termToAgda (Lam bind) = PP.text "( λ" <+> PP.text (Unbound.name2String n) <+> PP.text "->" <+> termToAgda t <+> PP.text ")"
  where
    (n, t) = Unbound.unsafeUnbind bind
termToAgda (App t1 t2) = PP.text "(" <+> termToAgda t1 <+> PP.text ") $ (" <+> termToAgda t2 <+> PP.text ")"
termToAgda (Pi ty bind) = first <+> PP.text "->" <+> termToAgda t
  where
    (n, t) = Unbound.unsafeUnbind bind
    first = if Unbound.name2String n == "_" then termToAgda ty else PP.text "(" <+> PP.text (Unbound.name2String n) <+> PP.text ":" <+> termToAgda ty <+> PP.text ")"
termToAgda (Ann tm ty) = PP.text "(" <+> termToAgda ty <+> PP.text ") ∋ (" <+> termToAgda tm <+> PP.text ")"
termToAgda (Pos _ t) = termToAgda t
termToAgda TyBool = PP.text "Bool"
termToAgda (LitBool b) = PP.text $ if b then "true" else "false"
termToAgda (If t1 t2 t3) = PP.text "if" <+> termToAgda t1 <+> PP.text "then" <+> termToAgda t2 <+> PP.text "else" <+> termToAgda t3
termToAgda TyUnit = PP.text "⊤"
termToAgda Unit = PP.text "tt"

-- | Convert a qualified name to Agda
qualifiedToAgda :: Qualified -> Doc
qualifiedToAgda (Current v) = PP.text $ Unbound.name2String v
qualifiedToAgda (Q mn q) = PP.text mn <> PP.text "." <> qualifiedToAgda q