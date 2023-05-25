{- tc language -}

-- | A parsec-based parser for the concrete syntax
module V0.Parser where

import Control.Monad.Except (MonadError (throwError))
import Control.Monad.Reader (ReaderT, runReaderT)
import Control.Monad.State.Lazy
  ( MonadIO (..),
    MonadTrans (lift),
    void,
  )
import Data.Bifunctor (second)
import Data.List (foldl')
import Text.Parsec hiding (Empty, State)
import qualified Unbound.Generics.LocallyNameless as Unbound
import qualified V0.LayoutToken as Token
import V0.Syntax

{-

Concrete syntax for the language:
Optional components in this BNF are marked with < >

  terms:
    a,b,A,B ::=
      Type                     Universes
    | x                        Variables   (start with lowercase)
    | \ x . a                  Function definition
    | a b                      Application
    | (x : A) -> B             Pi type

    | (a : A)                  Annotations
    | (a)                      Parens

    | Bool                     Boolean type
    | True | False             Boolean values
    | if a then b else c       If

    | Unit                     Unit type
    | 1                        Unit value

  declarations:

      foo : A
      foo = a

  Syntax sugar:

   - You can collapse lambdas, like:
         \ x [y] z . a

     This gets parsed as \ x . \ [y] . \ z . a

-}

liftError :: (MonadError e m) => Either e a -> m a
liftError (Left e) = throwError e
liftError (Right a) = return a

-- | Parse a module declaration from the given filepath.
parseModuleFile :: (MonadError ParseError m, MonadIO m) => String -> m UModule
parseModuleFile name = do
  contents <- liftIO $ readFile name
  liftError $
    Unbound.runFreshM $ runReaderT (runParserT (do whiteSpace; v <- moduleDef; eof; return v) [] name contents) False

-- | Parse only the imports part of a module from the given filepath
parseModuleImports :: (MonadError ParseError m, MonadIO m) => String -> m UModule
parseModuleImports name = do
  contents <- liftIO $ readFile name
  liftError $ Unbound.runFreshM $ runReaderT (runParserT (do whiteSpace; moduleImports) [] name contents) False

-- | Test an 'LParser' on a String.
testParser :: LParser t -> String -> Either ParseError t
testParser parser str =
  Unbound.runFreshM $ runReaderT (runParserT (do whiteSpace; v <- parser; eof; return v) [] "<interactive>" str) False

-- | Parse an expression.
parseExpr :: String -> Either ParseError Term
parseExpr = testParser $ expr

-- * Lexer definitions

type LParser a =
  ParsecT
    String -- The input is a sequence of Char
    [Column] -- The internal state for Layout tabs
    (ReaderT Bool Unbound.FreshM) -- The internal state for generating fresh names,
    a -- the type of the object being parsed

instance Unbound.Fresh (ParsecT s u Unbound.FreshM) where
  fresh = lift . Unbound.fresh

-- Based on Parsec's haskellStyle (which we can not use directly since
-- Parsec gives it a too specific type).
saStyle :: (Stream s m Char, Monad m) => Token.GenLanguageDef s u m
saStyle =
  Token.LanguageDef
    { Token.commentStart = "{-",
      Token.commentEnd = "-}",
      Token.commentLine = "--",
      Token.nestedComments = True,
      Token.identStart = letter,
      Token.identLetter = alphaNum <|> oneOf "_'",
      Token.opStart = oneOf ":!#$%&*+.,/<=>?@\\^|-",
      Token.opLetter = oneOf ":!#$%&*+.,/<=>?@\\^|-",
      Token.caseSensitive = True,
      Token.reservedNames =
        [ "Type",
          "module",
          "where",
          "section",
          "Bool",
          "True",
          "False",
          "if",
          "then",
          "else",
          "Unit",
          "()"
        ],
      Token.reservedOpNames =
        ["!", "?", "\\", ":", ".", ",", "<", "=", "+", "-", "*", "^", "()", "_", "|", "{", "}"]
    }

tokenizer :: Token.GenTokenParser String [Column] (ReaderT Bool Unbound.FreshM)
layout :: forall a t. LParser a -> LParser t -> LParser [a]
(tokenizer, Token.LayFun layout) = Token.makeTokenParser saStyle "{" ";" "}" --These layout tokens arent used as indentation is used instead

identifier :: LParser String
identifier = Token.identifier tokenizer

whiteSpace :: LParser ()
whiteSpace = Token.whiteSpace tokenizer

variable :: LParser TName
variable = do Unbound.string2Name <$> identifier

colon, dot, comma :: LParser ()
colon = void $ Token.colon tokenizer
dot = void $ Token.dot tokenizer
comma = void $ Token.comma tokenizer

reserved, reservedOp :: String -> LParser ()
reserved = Token.reserved tokenizer
reservedOp = Token.reservedOp tokenizer

parens, brackets, braces :: LParser a -> LParser a
parens = Token.parens tokenizer
brackets = Token.brackets tokenizer
braces = Token.braces tokenizer

moduleImports :: LParser UModule
moduleImports = do
  reserved "module"
  modName <- identifier
  arguments <- utelescope
  reserved "where"
  imports <- layout importDef (return ())
  return $ UModule modName imports $ Unbound.bind (Unbound.rec arguments) []

moduleDef :: LParser UModule
moduleDef = do
  reserved "module"
  modName <- identifier
  arguments <- utelescope
  reserved "where"
  imports <- layout importDef (return ())
  decls <- layout decl (return ())
  return $ UModule modName imports $ Unbound.bind (Unbound.rec arguments) decls

importDef :: LParser ModuleImport
importDef = do reserved "import" >> (ModuleImport <$> importName)
  where
    importName = identifier

moduleParams :: LParser (TName, Type)
moduleParams = do
  _ <- reservedOp "("
  name <- variable
  _ <- reservedOp ":"
  ty <- expr
  _ <- reservedOp ")"
  return (name, ty)

telescope :: LParser TeleScope
telescope = many moduleParams

utelescope :: LParser UTeleScope
utelescope = do
  ts <- many moduleParams
  return $ map (second Unbound.embed) ts

---
--- Top level declarations
---
decl, sigDef, valDef, modDef, applyDef :: LParser UDecl
decl = sigDef <|> valDef <|> modDef <|> applyDef
sigDef = do
  n <- try (variable >>= \v -> colon >> return v)
  UTypeSig . Sig (Current n) <$> expr
valDef = do
  n <- try (do n <- variable; reservedOp "="; return n)
  UDef n <$> expr
modDef = do
  (n, p) <- try (do reserved "module"; modName <- identifier; param <- utelescope; reserved "where"; return (modName, param))
  decls <- layout decl (return ())
  return $ UMod n $ Unbound.bind (Unbound.rec p) decls
applyDef = do
  reserved "module"
  modName <- identifier
  param <- utelescope
  reservedOp "="
  path <- modulePath
  args <- many factor
  return $ UModApply modName $ Unbound.bind (Unbound.rec param) (path, args)

modulePath :: LParser [MName]
modulePath = do
  h <- identifier
  t <- many (dot >> identifier)
  return $ h : t

qualifiedName :: LParser Qualified
qualifiedName = do
  f <- identifier
  t <- many1 (dot >> identifier)
  return $ h $ f : t
  where
    h [x] = Current $ Unbound.string2Name x
    h (x : xs) = Q x $ h xs
    h [] = undefined

------------------------
------------------------
-- Terms
------------------------
------------------------

-- Expressions

expr, term, factor :: LParser Term
-- expr is the toplevel expression grammar
-- expr' can be used to prevent reparsing of the initial term
expr = expr' Nothing

expr' :: Maybe Term -> LParser Term
expr' h = do
  p <- getPosition
  t <- maybe term return h
  tm <- many (reservedOp "->" >> term)
  r <- mkArrowType $ t : tm
  return $ Pos p r
  where
    mkArrowType [x] = return x
    mkArrowType (x : xs) = do
      n <- lift $ Unbound.fresh wildcardName
      t <- mkArrowType xs
      return $ Pi x (Unbound.bind n t)
    mkArrowType [] = undefined

-- A "term" is either a function application or a constructor
-- application.  Breaking it out as a seperate category both
-- eliminates left-recursion in (<expr> := <expr> <expr>) and
-- allows us to keep constructors fully applied in the abstract syntax.
term = funapp

funapp :: LParser Term
funapp = do
  f <- factor
  foldl' app f <$> many bfactor
  where
    bfactor = factor
    app e1 e2 = App e1 e2

factor =
  choice
    [ lambda <?> "a lambda",
      bconst <?> "a constant",
      ifExpr <?> "an if expression",
      varParser <?> "a var",
      expProdOrAnnotOrParens
        <?> "an explicit function type or annotated expression"
    ]

varParser :: LParser Term
varParser = do
  f <- identifier
  t <- many (dot >> identifier)
  if null t then return $ Var $ Unbound.string2Name f else return $ QualifiedTerm $ h $ f : t
  where
    h [x] = Current $ Unbound.string2Name x
    h (x : xs) = Q x $ h xs
    h [] = undefined

qualifiedVar :: LParser Term
qualifiedVar = QualifiedTerm <$> qualifiedName

-- Lambda abstractions have the syntax '\x . e'
lambda :: LParser Term
lambda = do
  reservedOp "\\"
  binds <- many1 variable
  dot
  body <- expr
  return $ foldr lam body binds
  where
    lam x m = Lam (Unbound.bind x m)

bconst :: LParser Term
bconst =
  choice
    [ reserved "Bool" >> return TyBool,
      reserved "False" >> return (LitBool False),
      reserved "True" >> return (LitBool True),
      reserved "Unit" >> return TyUnit,
      reserved "1" >> return Unit,
      reserved "Type" >> return Type
    ]

ifExpr :: LParser Term
ifExpr =
  do
    reserved "if"
    a <- expr
    reserved "then"
    b <- expr
    reserved "else"
    If a b <$> expr

-- Function types have the syntax '(x:A) -> B'.  This production deals
-- with the ambiguity caused because these types, annotations and
-- regular old parens all start with parens.

data InParens = Colon Term Term | Nope Term

expProdOrAnnotOrParens :: LParser Term
expProdOrAnnotOrParens =
  let -- afterBinder picks up the return type of a pi
      afterBinder :: LParser Term
      afterBinder = do
        reservedOp "->"
        expr

      -- before binder parses an expression in parens
      -- If it doesn't involve a colon, you get (Right tm)
      -- If it does, you get (Left tm1 tm2).  tm1 might be a variable,
      --    in which case you might be looking at an explicit pi type.
      beforeBinder :: LParser InParens
      beforeBinder =
        parens $ do
          t <- term
          choice
            [ do
                colon
                Colon t <$> expr,
              Nope <$> expr' (Just t)
            ]
   in do
        bd <- beforeBinder
        case bd of
          Colon (Var x) a ->
            option
              (Ann (Var x) a)
              ( do
                  Pi a . Unbound.bind x <$> afterBinder
              )
          Colon a b -> return $ Ann a b
          Nope a -> return a
