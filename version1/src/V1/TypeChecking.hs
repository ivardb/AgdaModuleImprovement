module V1.TypeChecking (typeCheck, typeCheckDefault, Config (..)) where

import Control.Monad.Except (MonadError (throwError), MonadIO (liftIO))
import Control.Monad.State (when)
import qualified Debug.TimeStats as TimeStats
import V1.Core.PrettyPrint ()
import V1.Core.Syntax (Core)
import V1.Error (ErrorMonad)
import qualified V1.Error as Error
import V1.ModuleTypeChecker (tcModule, verifyCore)
import V1.Modules (storeCore)
import V1.PrettyPrint (Disp (..), render)
import V1.ScopeChecker (scopeCheckModule)
import V1.Syntax (UModule (..))
import V1.TcEnvironment.ModuleEnvironment (emptyState, runTcMonadState)
import Control.DeepSeq (force)

data Config = Config
  { 
    -- | Should the typechecking output be verified
    verify :: Bool,
    -- | Should the final program be printed
    outputFinal :: Bool,
    -- | Should the intermediate steps (After parsing, after scopechecking) be printed
    outputIntermediate :: Bool
  }

-- | Typecheck with default config
typeCheckDefault :: [(FilePath, Either UModule Core)] -> ErrorMonad Core
typeCheckDefault = typeCheck Config {verify = False, outputFinal = False, outputIntermediate = False}

-- | Typecheck the provided modules using the provided cores. Core output will be stored at the provided filepath
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

-- | Typecheck the module using the provided cores and config
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
  scm <- TimeStats.measureM "Total: ScopeCheck step" $do s <- scopeCheckModule imported m; return $! force s
  when pInt $ liftIO $ putStrLn "done."
  when
    pInt
    ( do
        liftIO $ putStrLn "Output: "
        liftIO $ putStrLn $ render $ disp scm
        liftIO $ putStrLn ""
    )

  when pInt $ liftIO $ putStr "type checking... "
  output <- TimeStats.measureM "Total: TypeCheck step" $ do t <- runTcMonadState emptyState $ tcModule imported scm; return $! force t
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
