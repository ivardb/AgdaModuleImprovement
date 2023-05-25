module V1.Core.Syntax where

import Control.DeepSeq (NFData)
import Data.Typeable (Typeable)
import GHC.Generics (Generic)
import qualified Unbound.Generics.LocallyNameless as Unbound
import V1.Syntax (Decl (..), MName, ModPath, ModuleImport, Qualified, Sig, TeleScope, Term)

data Core = Core
  { modName :: MName,
    imports :: [ModuleImport],
    params :: TeleScope,
    contents :: [CoreDecl]
  }
  deriving (Show, Generic, Typeable, NFData)
  deriving anyclass (Unbound.Alpha, Unbound.Subst Term)

data CoreDecl
  = CoreTypeSig Sig
  | CoreDef Qualified Term
  | CoreModule ModPath TeleScope [CoreDecl]
  deriving (Show, Generic, Typeable, NFData)
  deriving anyclass (Unbound.Alpha, Unbound.Subst Term)

coreDeclToDecl :: (Unbound.Fresh m) => CoreDecl -> m Decl
coreDeclToDecl (CoreTypeSig s) = return $ TypeSig s
coreDeclToDecl (CoreDef n t) = return $ Def n t
coreDeclToDecl (CoreModule n ts decls) = Mod n ts <$> mapM coreDeclToDecl decls