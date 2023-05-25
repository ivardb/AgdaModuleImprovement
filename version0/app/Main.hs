{- tc language -}

-- | The command line interface to the pi type checker.
module Main (main) where

import System.Environment (getArgs)
import System.Exit (exitSuccess)
import V0.TcMain (goFilename)
import V0.TypeChecking (Config (..))

main :: IO ()
main = do
  [pathToMainFile] <- getArgs
  goFilename False pathToMainFile Config {verify = True, outputFinal = True, outputIntermediate = True}
  exitSuccess
