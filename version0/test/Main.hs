module Main where

import Control.Monad (when)
import Control.Monad.Except (runExceptT)
import Data.Either (isRight)
import System.Directory (listDirectory)
import System.FilePath (hasExtension, splitFileName, takeBaseName, takeExtension, (</>))
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertFailure, testCase)
import V0.Core.Parser (parseCoreFile)
import V0.Error (runErrorMonad)
import V0.ModuleTypeChecker (verifyCore)
import V0.Modules (getModules)
import V0.PrettyPrint (Disp (disp), render)
import V0.TcEnvironment.ModuleEnvironment (emptyState)
import V0.TypeChecking (Config (..), typeCheck)

main :: IO ()
main = tests >>= defaultMain

tests :: IO TestTree
tests = do
  tcTests <- typeCheckTests
  return $ testGroup "Tests" [tcTests]

typeCheckTests :: IO TestTree
typeCheckTests = do
  pt <- testFolder True "../tests/positive_tests" "positive_tests"
  nt <- testFolder False "../tests/negative_tests" "negative_tests"
  return $ testGroup "TypeChecking" [pt, nt]

testPath :: Bool -> FilePath -> String -> IO TestTree
testPath succeed path name = if hasExtension path then (if succeed then testFile path else testFileError path) else testFolder succeed path name

testFolder :: Bool -> FilePath -> String -> IO TestTree
testFolder succeed path name = do
  files <- listDirectory path
  let filteredFiles = filter (\f -> takeBaseName f /= "baseImport" && (not (hasExtension f) || (takeExtension f == ".sa"))) files
  t <- mapM (\x -> testPath succeed (path </> x) (name ++ ('/' : x))) filteredFiles
  return $ testGroup name t

-- | Type check the given file
testFile :: FilePath -> IO TestTree
testFile name = return $
  testCase (takeBaseName name) $ do
    let (mainFilePrefix, _) = splitFileName name
    v <- runExceptT (getModules False ["", mainFilePrefix] name)
    val <- v `exitWith` (\b -> assertFailure $ "Parse error:\n" ++ render (disp b))
    d <- runErrorMonad $ typeCheck Config {verify = True, outputFinal = False, outputIntermediate = False} val
    core <- d `exitWith` (\s -> assertFailure $ "Type error:\n" ++ render (disp s))

    when
      (length val == 1)
      ( do
          pc <- runExceptT $ parseCoreFile name
          parsedCore <- pc `exitWith` (\b -> assertFailure $ "Parse error:\n" ++ render (disp b))
          ve <- runErrorMonad $ verifyCore emptyState parsedCore
          ve `exitWith` (\s -> assertFailure $ "Type error:\n" ++ render (disp s))
      )

testFileError :: FilePath -> IO TestTree
testFileError name = return $
  testCase (takeBaseName name) $ do
    let (mainFilePrefix, _) = splitFileName name
    v <- runExceptT (getModules False ["", mainFilePrefix] name)
    val <- v `exitWith` (\b -> assertFailure $ "Parse error:\n" ++ render (disp b))
    d <- runErrorMonad $ typeCheck Config {verify = True, outputFinal = False, outputIntermediate = False} val
    when (isRight d) $ assertFailure "TypeChecking succeeded"

exitWith :: Either a b -> (a -> IO b) -> IO b
exitWith (Left a) f = f a
exitWith (Right b) f = return b