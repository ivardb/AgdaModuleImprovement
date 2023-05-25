module V3.TcMain (goFilename) where

import Control.Monad.Except (runExceptT)
import qualified Debug.TimeStats as TimeStats
import System.Exit (exitFailure)
import System.FilePath (splitFileName)
import Text.ParserCombinators.Parsec.Error (ParseError, errorPos)
import V3.Error (runErrorMonad)
import V3.Modules (getModules)
import V3.Parser (parseExpr)
import V3.PrettyPrint (Disp (..), render)
import V3.TcEnvironment.ModuleEnvironment (emptyState, runTcMonadState)
import V3.TermTypeChecker (inferType)
import V3.TypeChecking (Config (..), typeCheck)

exitWith :: Either a b -> (a -> IO ()) -> IO b
exitWith res f =
  case res of
    Left x -> f x >> exitFailure
    Right y -> return y

-- | Type check the given string in the empty environment
go :: String -> IO ()
go str = do
  case parseExpr str of
    Left parseError -> putParseError parseError
    Right term -> do
      putStrLn "parsed as"
      putStrLn $ render $ disp term
      res <- runErrorMonad $ runTcMonadState emptyState (inferType term)
      case res of
        Left typeError -> putTypeError typeError
        Right ty -> do
          putStrLn "typed with type"
          putStrLn $ render $ disp ty

-- | Display a parse error to the user
putParseError :: ParseError -> IO ()
putParseError parseError = do
  putStrLn $ render $ disp $ errorPos parseError
  print parseError

-- | Display a type error to the user
putTypeError :: Disp d => d -> IO ()
putTypeError typeError = do
  putStrLn "Type Error:"
  putStrLn $ render $ disp typeError

-- | Type check the given file
-- Bool should only be true if we know caches are up to date as no checks for this are involved
goFilename :: Bool -> String -> Config -> IO ()
goFilename useCached pathToMainFile c = TimeStats.measureM "Total" $ do
  let prefixes = [currentDir, mainFilePrefix]
      (mainFilePrefix, name) = splitFileName pathToMainFile
      currentDir = ""
  v <- runExceptT (getModules useCached prefixes name)
  val <- v `exitWith` putParseError
  d <- runErrorMonad $ typeCheck c val
  core <- d `exitWith` putTypeError
  return ()