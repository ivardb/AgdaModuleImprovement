module V2.Core.Parser where

import Control.Monad.Except (MonadError)
import Control.Monad.Reader (runReaderT)
import Control.Monad.State.Lazy (MonadIO (..))
import System.FilePath (dropExtension, (<.>))
import Text.Parsec (ParseError, many, try, (<|>))
import Text.Parsec.Combinator (eof)
import Text.Parsec.Prim (runParserT)
import qualified Unbound.Generics.LocallyNameless as Unbound
import V2.Core.Syntax (Core)
import V2.Parser (LParser, colon, expr, factor, importDef, layout, liftError, modulePath, modulePathT, qualifiedName, reserved, reservedOp, telescope, whiteSpace)
import V2.Syntax (Decl (..), Module (..), Sig (Sig))

parseCoreFile :: (MonadError ParseError m, MonadIO m) => FilePath -> m Core
parseCoreFile name = do
  let name' = dropExtension name <.> "v2core"
  contents <- liftIO $ readFile name'
  liftError $
    Unbound.runFreshM $
      runReaderT
        ( runParserT
            ( do
                whiteSpace
                m <- moduleDef
                eof
                return m
            )
            []
            name'
            contents
        )
        True

decl, sigDef, valDef, modDef, applyDef :: LParser Decl
decl = sigDef <|> valDef <|> modDef <|> applyDef
sigDef = do
  n <- try (qualifiedName >>= \v -> colon >> return v)
  TypeSig . Sig n <$> expr
valDef = do
  n <- try (do n <- qualifiedName; reservedOp "="; return n)
  Def n <$> expr
modDef = do
  (n, p) <- try (do reserved "module"; modName <- modulePath; param <- telescope; reserved "where"; return (modName, param))
  decls <- layout decl (return ())
  return $ Mod n p decls
applyDef = do
  reserved "module"
  modName <- modulePath
  param <- telescope
  reservedOp "="
  path <- modulePathT
  args <- many factor
  return $ ModApply modName param path args

moduleDef :: LParser Module
moduleDef = do
  reserved "module"
  modName <- modulePath
  arguments <- telescope
  reserved "where"
  imports <- layout importDef (return ())
  decls <- layout decl (return ())

  return $ Module modName imports arguments decls