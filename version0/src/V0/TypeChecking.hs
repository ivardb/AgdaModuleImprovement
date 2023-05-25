module V0.TypeChecking (typeCheck, typeCheckDefault, Config (..)) where

import Control.DeepSeq (force)
import Control.Monad.Except (MonadError (throwError), MonadIO (liftIO))
import Control.Monad.State (when)
import qualified Debug.TimeStats as TimeStats
import V0.Core.PrettyPrint ()
import V0.Core.Syntax (Core)
import V0.Error (ErrorMonad)
import qualified V0.Error as Error
import V0.ModuleTypeChecker (tcModule, verifyCore)
import V0.Modules (storeCore)
import V0.PrettyPrint (Disp (..), render)
import V0.ScopeChecker (scopeCheckModule)
import V0.Syntax (UModule (..))
import V0.TcEnvironment.ModuleEnvironment (fromCores, runTcMonadState)

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
  state <- TimeStats.measureM "TypeCheck: Initialise typing env" $ fromCores imported
  output <- TimeStats.measureM "Total: TypeCheck step" $ do
    o <- runTcMonadState state $ tcModule scm
    return $! force o
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
        verifyCore state output
        when pInt $ liftIO $ putStrLn "done."
    )
  return output
