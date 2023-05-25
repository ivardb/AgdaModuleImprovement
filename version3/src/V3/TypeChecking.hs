module V3.TypeChecking (typeCheck, typeCheckDefault, Config (..)) where

import Control.Monad.Except (MonadError (throwError), MonadIO (liftIO))
import Control.Monad.State (when)
import qualified Debug.TimeStats as TimeStats
import V3.Core.PrettyPrint ()
import V3.Core.Syntax (Core)
import V3.Error (ErrorMonad)
import qualified V3.Error as Error
import V3.ModuleTypeChecker (tcModule, verifyCore)
import V3.Modules (storeCore)
import V3.PrettyPrint (Disp (..), render)
import V3.ScopeChecker (scopeCheckModule)
import V3.Syntax (UModule (..))
import V3.TcEnvironment.ModuleEnvironment (emptyState, runTcMonadState)
import Control.DeepSeq (force)

data Config = Config
  { verify :: Bool,
    outputFinal :: Bool,
    outputIntermediate :: Bool
  }

typeCheckDefault :: [(FilePath, Either UModule Core)] -> ErrorMonad Core
typeCheckDefault = typeCheck Config {verify = False, outputFinal = False, outputIntermediate = False}

typeCheck :: Config -> [(FilePath, Either UModule Core)] -> ErrorMonad Core
typeCheck c mods = TimeStats.measureM "Total: TypeChecking" $ typeCheck' mods []
  where
    typeCheck' [] cores = throwError $ Error.Err [] $ disp "Attempting to type check zero modules"
    typeCheck' [(f, Left x)] cores = do
      core <- typeCheckM c cores x
      TimeStats.measureM "Serialization: Write main to file" $ storeCore f core
      return core
    typeCheck' [(_, Right _)] _ = throwError $ Error.Err [] $ disp "Main module has a core file loaded"
    typeCheck' ((f, Left x) : xs) cores = do
      core <- typeCheckM c cores x
      TimeStats.measureM "Serialization: Write import to file" $ storeCore f core
      typeCheck' xs (core : cores)
    typeCheck' ((f, Right core) : xs) cores = do
      typeCheck' xs (core : cores)

typeCheckM :: Config -> [Core] -> UModule -> ErrorMonad Core
typeCheckM c imported m@(UModule n imp _) = TimeStats.measureM ("Total: Checking of " ++ n) $ do
  let pInt = outputIntermediate c
  when
    pInt
    ( do
        liftIO $ putStrLn "Type checking input:"
        liftIO $ putStrLn $ render $ disp m
        liftIO $ putStrLn ""
    )

  when pInt $ liftIO $ putStr "scope checking... "
  scm <- TimeStats.measureM "Total: ScopeCheck step" $ do s <- scopeCheckModule imported m; return $! force s
  when pInt $ liftIO $ putStrLn "done."
  when
    pInt
    ( do
        liftIO $ putStrLn "Output: "
        liftIO $ putStrLn $ render $ disp scm
        liftIO $ putStrLn ""
    )

  when pInt $ liftIO $ putStr "type checking... "
  output <- TimeStats.measureM "Total: TypeCheck step" $ do s <- runTcMonadState emptyState $ tcModule imported scm; return $! force s
  when pInt $ liftIO $ putStrLn "done."
  when
    (outputFinal c)
    ( do
        liftIO $ putStrLn "Output: "
        liftIO $ putStrLn $ render $ disp output
    )

  when
    (verify c)
    ( do
        when pInt $ liftIO $ putStr "Verifying... "
        verifyCore imported output
        when pInt $ liftIO $ putStrLn "done."
    )
  return output
