module V0.Core.Parser where

import Control.Monad.Except (MonadError)
import Control.Monad.Reader (runReaderT)
import Control.Monad.State.Lazy (MonadIO (..))
import System.FilePath.Posix (dropExtension, (<.>))
import Text.Parsec (ParseError, try, (<|>))
import Text.Parsec.Combinator (eof)
import Text.Parsec.Prim (runParserT)
import qualified Unbound.Generics.LocallyNameless as Unbound
import V0.Core.Syntax (Core (..), CoreDecl (..), Section (..))
import V0.Parser
  ( LParser,
    colon,
    expr,
    identifier,
    importDef,
    layout,
    liftError,
    modulePath,
    qualifiedName,
    reserved,
    reservedOp,
    telescope,
    whiteSpace,
  )
import V0.Syntax (Sig (..))

-- | Parser for core files. Core files are pretty-printed not serialised so we need an actual parser.
parseCoreFile :: (MonadError ParseError m, MonadIO m) => FilePath -> m Core
parseCoreFile name = do
  let name' = dropExtension name <.> "v0core"
  contents <- liftIO $ readFile name'
  liftError $
    Unbound.runFreshM $
      runReaderT
        ( runParserT
            ( do
                whiteSpace
                reserved "core"
                modname <- identifier
                params <- telescope
                imp <- layout importDef (return ())
                scs <- layout section (return ())
                decls <- layout coreDef (return ())
                eof
                return $ Core modname params imp scs decls
            )
            []
            name'
            contents
        )
        False

section :: LParser Section
section = do
  reserved "section"
  path <- modulePath
  Section path <$> telescope

coreDef, coreSigDef, coreValDef :: LParser CoreDecl
coreDef = coreSigDef <|> coreValDef
coreSigDef = do
  n <- try (qualifiedName >>= \v -> colon >> return v)
  CoreTypeSig . Sig n <$> expr
coreValDef = do
  n <- try (do n <- qualifiedName; reservedOp "="; return n)
  CoreDef n <$> expr