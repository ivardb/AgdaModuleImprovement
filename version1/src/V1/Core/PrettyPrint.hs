module V1.Core.PrettyPrint where

import qualified Text.PrettyPrint as PP
import V1.Core.Syntax (Core (..), CoreDecl (..))
import V1.PrettyPrint (Disp (disp), DispInfo (indent), Display (display), withIndent)

instance Disp CoreDecl

instance Disp Core

instance Display Core where
  display Core {modName = name, imports = imp, params = ts, contents = decls} = do
    i <- indent
    dimp <- withIndent (i + 4) $ mapM display imp
    dme <- withIndent (i + 4) $ mapM display decls
    let header = PP.text (replicate i ' ') <> (PP.text "module" PP.<+> disp name PP.<+> disp ts PP.<+> PP.text "where")
    return $ header PP.$$ PP.vcat dimp PP.$$ PP.vcat dme

instance Display CoreDecl where
  display (CoreTypeSig s) = do
    ind <- indent
    return $ PP.text (replicate ind ' ') <> disp s
  display (CoreDef q t) = do
    ind <- indent
    return $ PP.text (replicate ind ' ') <> (disp q PP.<+> PP.text "=" PP.<+> disp t)
  display (CoreModule m ts decls) = do
    i <- indent
    dme <- withIndent (i + 4) $ mapM display decls
    return $ PP.text (replicate i ' ') <> (PP.text "module" PP.<+> disp m PP.<+> disp ts PP.<+> PP.text "where") PP.$$ PP.vcat dme