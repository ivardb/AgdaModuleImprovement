module V0.Core.PrettyPrint where

import qualified Text.PrettyPrint as PP
import V0.Core.Syntax (Core (..), CoreDecl, Section (..), coreDeclToDecl)
import V0.PrettyPrint (Disp (disp))

instance Disp Core where
  disp Core {modName = name, imports = imp, params = ts, decls = dcs, sections = scs} =
    PP.text "core" PP.<+> disp name PP.<+> disp ts PP.$$ PP.vcat [disp imp, PP.text "", disp scs, PP.text "", disp dcs]

instance Disp CoreDecl where
  disp = disp . coreDeclToDecl

instance Disp Section where
  disp (Section path ts) = PP.text "section" PP.<+> disp path PP.<+> disp ts