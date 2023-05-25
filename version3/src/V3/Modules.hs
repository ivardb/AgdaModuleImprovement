{- tc language -}

-- | Tools for working with multiple source files
module V3.Modules (getModules, ModuleInfo (..), storeCore) where

import Control.Monad.Except (MonadError, MonadIO (..), filterM)
import qualified Data.Graph as Gr
import Data.List (nub, (\\))
import qualified Debug.TimeStats as TimeStats
import System.Directory (doesFileExist)
import System.FilePath
  ( dropExtension,
    takeExtension,
    (<.>),
    (</>),
  )
import Text.ParserCombinators.Parsec.Error (ParseError)
import V3.Core.Parser (parseCoreFile)
import V3.Core.PrettyPrint ()
import V3.Core.Syntax (Core)
import V3.Parser (parseModuleFile, parseModuleImports)
import V3.PrettyPrint (Disp (disp), render)
import V3.Syntax (MName, ModuleImport (..), UModule (..))

-- | getModules starts with a top-level module, and gathers all of the module's
-- transitive dependency. It returns the list of parsed modules, with all
-- modules appearing after its dependencies.
getModules ::
  (Functor m, MonadError ParseError m, MonadIO m) =>
  Bool ->
  [FilePath] ->
  String ->
  m [(FilePath, Either UModule Core)]
getModules useCache prefixes top = TimeStats.measureM "Total: Loading required modules from filesystem" $ do
  toParse <- TimeStats.measureM "Loading: Processing import dependencies" $ gatherModules prefixes [ModuleImport top]
  topName <- getModuleFileName prefixes top
  mapM (reparse useCache topName) toParse

storeCore :: (Functor m, MonadIO m) => FilePath -> Core -> m ()
storeCore name core = liftIO $ writeFile fixedName (render $ disp core)
  where
    fixedName = dropExtension name <.> "v3core"

data ModuleInfo = ModuleInfo
  { modInfoName :: MName,
    modInfoFilename :: String,
    modInfoImports :: [ModuleImport]
  }

-- | Build the module dependency graph.
--   This only parses the imports part of each file; later we go back and parse all of it.
gatherModules ::
  (Functor m, MonadError ParseError m, MonadIO m) =>
  [FilePath] ->
  [ModuleImport] ->
  m [ModuleInfo]
gatherModules prefixes ms = gatherModules' ms []
  where
    gatherModules' [] accum = return $ topSort accum
    gatherModules' ((ModuleImport m) : ms') accum = do
      modFileName <- getModuleFileName prefixes m
      imports <- moduleImports <$> parseModuleImports modFileName
      let accum' = ModuleInfo m modFileName imports : accum
      let oldMods = map (ModuleImport . modInfoName) accum'
      gatherModules' (nub (ms' ++ imports) \\ oldMods) accum'
    moduleImports (UModule _ imp _) = imp

-- | Generate a sorted list of modules, with the postcondition that a module
-- will appear _after_ any of its dependencies.
topSort :: [ModuleInfo] -> [ModuleInfo]
topSort ms = reverse sorted
  where
    (gr, lu) =
      Gr.graphFromEdges'
        [ (m, modInfoName m, [i | ModuleImport i <- modInfoImports m])
          | m <- ms
        ]
    lu' v = let (m, _, _) = lu v in m
    sorted = [lu' v | v <- Gr.topSort gr]

-- | Find the file associated with a module.
getModuleFileName ::
  (MonadIO m) =>
  [FilePath] ->
  MName ->
  m FilePath
getModuleFileName prefixes modul = do
  let makeFileName prefix = prefix </> mDotSa
      -- get M.sa from M or M.sa
      mDotSa =
        if takeExtension s == ".sa"
          then s
          else s <.> "sa"
      s = modul
      possibleFiles = map makeFileName prefixes
  files <- liftIO $ filterM doesFileExist possibleFiles
  if null files
    then
      error $
        "Can't locate module: " ++ show modul
          ++ "\nTried: "
          ++ show possibleFiles
    else return $ head files

-- | Fully parse a module (not just the imports).
reparse ::
  (MonadError ParseError m, MonadIO m) =>
  Bool ->
  FilePath ->
  ModuleInfo ->
  m (FilePath, Either UModule Core)
reparse useCache top (ModuleInfo _ fileName _) = TimeStats.measureM ("Loading: " ++ fileName) $ do
  b <- liftIO $ doesFileExist (dropExtension fileName <.> "v3core")
  if b && useCache && (top /= fileName)
    then do
      m <- parseCoreFile fileName
      return (fileName, Right m)
    else do
      m <- parseModuleFile fileName
      return (fileName, Left m)
