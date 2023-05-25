module V1.Core.Parser where

import Control.Monad.Except (MonadError)
import Control.Monad.Reader (ReaderT (runReaderT))
import Control.Monad.State.Lazy (MonadIO (..))
import System.FilePath (dropExtension, (<.>))
import Text.Parsec (ParseError, try, (<|>))
import Text.Parsec.Combinator (eof)
import Text.Parsec.Prim (runParserT)
import qualified Unbound.Generics.LocallyNameless as Unbound
import V1.Core.Syntax (Core (..), CoreDecl (..))
import V1.Parser (LParser, colon, expr, importDef, layout, liftError, modulePath, qualifiedName, reserved, reservedOp, telescope, whiteSpace)
import V1.Syntax (ModPath, Sig (Sig), TeleScope)

-- | Parser for core files. Core files are pretty-printed not serialised so we need an actual parser.
parseCoreFile :: (MonadError ParseError m, MonadIO m) => FilePath -> m Core
parseCoreFile name = do
  let name' = dropExtension name <.> "v1core"
  contents <- liftIO $ readFile name'
  liftError $
    Unbound.runFreshM $
      runReaderT
        ( runParserT
            ( do
                whiteSpace
                reserved "module"
                n <- modulePath
                ts <- telescope
                reserved "where"
                imp <- layout importDef (return ())
                decls <- layout coreDef (return ())
                eof
                return $ Core (last n) imp ts decls
            )
            []
            name'
            contents
        )
        True

coreDef, coreSigDef, coreValDef, coreModDef :: LParser CoreDecl
coreDef = coreSigDef <|> coreValDef <|> coreModDef
coreSigDef = do
  n <- try (qualifiedName >>= \v -> colon >> return v)
  CoreTypeSig . Sig n <$> expr
coreValDef = do
  n <- try (do n <- qualifiedName; reservedOp "="; return n)
  CoreDef n <$> expr
coreModDef = do
  (n, ts, decls) <- coreModBody
  return $ CoreModule n ts decls

coreModBody :: LParser (ModPath, TeleScope, [CoreDecl])
coreModBody = do
  reserved "module"
  n <- modulePath
  param <- telescope
  reserved "where"
  decls <- layout coreDef (return ())
  return (n, param, decls)