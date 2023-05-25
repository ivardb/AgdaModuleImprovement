module V0.Core.Syntax where

import Control.DeepSeq (NFData)
import GHC.Generics (Generic)
import V0.Syntax (Decl (..), MName, ModPath, ModuleImport, Qualified, Sig, TeleScope, Term)

data Core = Core
  { modName :: MName,
    params :: TeleScope,
    imports :: [ModuleImport],
    sections :: [Section],
    decls :: [CoreDecl]
  }
  deriving (Show, Generic, NFData)

data CoreDecl = CoreTypeSig Sig | CoreDef Qualified Term deriving (Show, Generic, NFData)

coreDeclToDecl :: CoreDecl -> Decl
coreDeclToDecl (CoreTypeSig s) = TypeSig s
coreDeclToDecl (CoreDef q t) = Def q t

data Section = Section ModPath TeleScope deriving (Show, Generic, NFData)