{- tc language -}

-- | The command line interface to the pi type checker.
module Main (main) where

import System.Environment (getArgs)
import System.Exit (exitSuccess)
import V3.TcMain (goFilename)
import V3.TypeChecking (Config (..))

main :: IO ()
main = do
  [pathToMainFile] <- getArgs
  goFilename False pathToMainFile Config {verify = True, outputFinal = True, outputIntermediate = True}
  exitSuccess
