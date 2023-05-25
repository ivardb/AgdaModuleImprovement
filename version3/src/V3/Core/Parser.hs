module V3.Core.Parser where

import Control.Monad.Except (MonadError)
import Control.Monad.State.Lazy (MonadIO (..))
import System.FilePath (dropExtension, (<.>))
import Text.Parsec (ParseError, many, try, (<|>))
import Text.Parsec.Combinator (eof)
import Text.Parsec.Prim (runParserT)
import qualified Unbound.Generics.LocallyNameless as Unbound
import V3.Core.Syntax (Core)
import V3.Parser (LParser, colon, expr, factor, importDef, layout, liftError, modulePath, qualifiedName, reserved, reservedOp, whiteSpace, telescope, modulePathT)
import V3.Syntax (Decl (..), Module (..), Sig (Sig))

parseCoreFile :: (MonadError ParseError m, MonadIO m) => FilePath -> m Core
parseCoreFile name = do
  let name' = dropExtension name <.> "v3core"
  contents <- liftIO $ readFile name'
  liftError $
    Unbound.runFreshM
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