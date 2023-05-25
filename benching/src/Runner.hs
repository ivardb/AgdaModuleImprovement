module Runner where

import Control.Monad (foldM, replicateM, when, unless)
import Data.Fixed (Nano)
import Data.List (intercalate, isSuffixOf, isPrefixOf)
import Data.List.Split (splitOn)
import Data.Map (Map)
import qualified Data.Map as Map (empty, fromList, lookup, unionWith)
import qualified Data.Map.Strict as Map (union)
import Data.Maybe (fromJust, mapMaybe)
import Data.Set (Set)
import qualified Data.Set as Set (empty, fromList, toAscList, toList, union)
import Data.Text as Text (Text, drop, lines, pack, splitOn, strip, unpack)
import Data.Word (Word64)
import Debug.TimeStats (TimeStats (..))
import qualified Debug.TimeStats as TimeStats
import GHC.Clock (getMonotonicTimeNSec)
import Processing (ExperimentRes (..), Stats, Version (..), allVersions, computeStats, empty, union, toPercentages, combineRepeatRuns, median, combineFiles, geoMean, average, loadFiles, loadExperiment, loadExperimentAvg)
import System.Directory (listDirectory, removeFile, createDirectoryIfMissing, doesDirectoryExist, getFileSize)
import System.FilePath (hasExtension, takeExtension, (<.>), (</>), dropExtension, replaceDirectory, splitDirectories, takeDirectory, (-<.>), dropFileName, takeFileName)
import qualified V0.TcMain as V0
import qualified V0.TypeChecking as V0
import qualified V1.TcMain as V1
import qualified V1.TypeChecking as V1
import qualified V2.TcMain as V2
import qualified V2.TypeChecking as V2
import Rendering (displayResults, Scale (..), genTable, genTableNoPost, genTables, genTablesNoPost, genLatexTable)
import System.PosixCompat (getFileStatus, fileSize)
import AgdaRunner (timeAgdaFile, timingDataToTimeStats)
import System.Process (runProcess, callProcess, readProcess)

-- | Args:
-- - Allow non empty dumping
-- - delete core before and after
-- - Use existing core files
-- - Optional dump storage location
-- - Report location
-- - Experiment location
-- - Starting point in case of adding additional runs
-- - Number of runs
benchmark :: Bool -> Bool -> Bool -> Maybe FilePath -> FilePath -> FilePath -> Int -> Int -> IO ()
benchmark dumpNonEmpty delCaches useCaches o report folder startingPoint n = do
  when delCaches $ deleteCaches folder
  createDirectoryIfMissing True report
  res <- repeatExperiment dumpNonEmpty startingPoint n o $ runExperiments useCaches Version0 folder
  prefixes <- Prelude.lines <$> readFile (folder </> "prefixes.md")
  let combined = combineRepeatRuns median res
  writeFile (report </> "times.md") $ displayResults "" (Map.fromList [(Version0, MiliSec), (Version1, MiliSec), (Version2, MiliSec)]) combined
  let per = toPercentages combined
  writeFile (report </> "percentages.md") $ displayResults "" (Map.fromList [(Version0, MiliSec), (Version1, NanoSec), (Version2, NanoSec)]) per
  writeFile (report </> "summary.md") $ (genTables MiliSec . combineFiles prefixes median geoMean) per
  writeFile (report </> "stats.md") $ displayResults "" (Map.fromList [(Version0, MiliSec), (Version1, MiliSec), (Version2, MiliSec)]) $ computeStats res
  writeFile (report </> "averages.md") $ (genTablesNoPost MiliSec . combineFiles prefixes average average . combineRepeatRuns average) res
  when delCaches $ deleteCaches folder

benchmarkAgda :: [String] -> Bool -> Bool -> Bool -> Maybe FilePath -> FilePath -> FilePath -> Int -> Int -> IO ()
benchmarkAgda prefixes dumpNonEmpty delCaches useCache o report folder startingPoint n = do
  createDirectoryIfMissing True report
  res <- repeatExperiment dumpNonEmpty startingPoint n o $ runExperiments useCache Agda folder
  writeFile (report </> "times.md") $ displayResults "" (Map.fromList [(Agda, MiliSec)]) $ combineRepeatRuns average res
  writeFile (report </> "stats.md") $ displayResults "" (Map.fromList [(Agda, MiliSec)]) $ computeStats res
  writeFile (report </> "averages.md") $ (genTablesNoPost MiliSec . combineFiles prefixes average average . combineRepeatRuns average) res
  writeFile (report </> "medians.md") $ (genTablesNoPost MiliSec . combineFiles prefixes median median . combineRepeatRuns median) res
  when delCaches $ deleteCaches folder

-- | Repeat an experiment n times, storing the output optionally in the provided folder
repeatExperiment :: Bool -> Int -> Int -> Maybe FilePath -> (Maybe FilePath -> Int -> Int -> IO (ExperimentRes TimeStats)) -> IO [ExperimentRes TimeStats]
repeatExperiment dumpNonEmpty startingPoint n Nothing m = do
  _ <- m Nothing (startingPoint + 0) (startingPoint + n)
  mapM (\i -> m Nothing i n) [1..n]
repeatExperiment dumpNonEmpty startingPoint n (Just folder) m = do
  b <- doesDirectoryExist folder
  when (b && not dumpNonEmpty) (do f <- listDirectory folder; when (any hasExtension f) $ error $ "Dumping to non empty folder:" ++ folder)
  createDirectoryIfMissing True folder
  _ <- m Nothing (startingPoint + 0) (startingPoint + n)
  mapM (\i -> m (Just folder) i (startingPoint + n)) [startingPoint + 1..startingPoint + n]


-- | Run an experiment for all versions
runExperimentsForAll :: Bool -> FilePath -> Maybe FilePath -> Int -> Int -> IO (ExperimentRes TimeStats)
runExperimentsForAll useCache f output i ma = foldM (\m x -> union m <$> runExperiments useCache x f output i ma) empty allVersions

-- | Run all files in the provided folder, for the given version, optionally storing the results in data dumps
-- The number is used to know which experiments belong together when reading from file.
-- If an experiment is split up into multiple calls to runExperiments then the number can be used to later combine them.
runExperiments :: Bool -> Version -> FilePath -> Maybe FilePath -> Int -> Int -> IO (ExperimentRes TimeStats)
runExperiments useCache v folder output i m = do
  putStrLn $ show v ++ ": (" ++ show i ++ "/" ++ show m ++ ") " ++ folder
  files <- fmap (folder </>) <$> listDirectory folder
  let files' = filter ((\e -> e `elem` [".sa", ".agda"]) . takeExtension) files
  res <- mapM (\f -> (f,) <$> runExperiment v f) files'
  let res' = concatMap (\(f, n) -> map (f,) n) res
  let dataSet = Map.fromList $ map (\(f, (s, r)) -> ((v, f, s), r)) res'
  case output of
    Nothing -> return ()
    Just f -> do
      t <- getMonotonicTimeNSec
      let filename = f </> show v ++ show t <.> "dump"
      createDirectoryIfMissing True f
      writeFile filename $ unlines [show useCache, show i, show v, folder, "", unlines $ map (\(f, ss) -> unlines (f : map (\(s, t) -> s ++ ";" ++ show (timeStat t) ++ ";" ++ show (countStat t)) ss)) res]
  return $ Res {dataSet = dataSet, versionsUsed = Set.fromList [v], labels = Map.fromList (map (\(fp, stats) -> (fp, Set.fromList $ map fst stats)) res), filesRun = Set.fromList files'}
  where
    runExperiment Version0 f = do
      --putStrLn $ "Version 0: (" ++ show i ++ "/" ++ show m ++ ") " ++ f
      let c = V0.Config False False False
      TimeStats.reset
      V0.goFilename useCache f c
      collectNonZero
    runExperiment Version1 f = do
      --putStrLn $ "Version 1: (" ++ show i ++ "/" ++ show m ++ ") " ++ f
      let c = V1.Config False False False
      TimeStats.reset
      V1.goFilename useCache f c
      collectNonZero
    runExperiment Version2 f = do
      --putStrLn $ "Version 2: (" ++ show i ++ "/" ++ show m ++ ") " ++ f
      let c = V2.Config False False False
      TimeStats.reset
      V2.goFilename useCache f c
      collectNonZero
    runExperiment Agda f = do
      putStrLn $ "Agda: (" ++ show i ++ "/" ++ show m ++ ") " ++ f
      t <- timeAgdaFile useCache f
      return $ timingDataToTimeStats t

-- | Delete all agda interface files and all core files in the provided folderr
deleteCaches :: FilePath -> IO ()
deleteCaches folder = do
  fs <- listDirectory folder
  let remove = mapMaybe (\f -> if takeExtension f == "agdai" || "core" `isSuffixOf` takeExtension f then Just (folder </> f) else Nothing) fs
  mapM_ removeFile remove

-- | Collect the filesizes of the core outputs of all 3 versions for the provided path
getFileSizes :: FilePath -> IO [Int]
getFileSizes f = do
  let c = V0.Config False False False
  V0.goFilename False f c
  let c = V1.Config False False False
  V1.goFilename False f c
  let c = V2.Config False False False
  V2.goFilename False f c
  let f' = dropExtension f
  s0 <- getFileSize $ f' <.> "v0core"
  s1 <- getFileSize $ f' <.> "v1core"
  s2 <- getFileSize $ f' <.> "v2core"
  return [s0, s1, s2]
  where
    getFileSize path = do
      stat <- getFileStatus path
      return $ round $ fromIntegral (fileSize stat)/1000

-- | Get all filesizes for Agda of the files in the folder
getAllFileSizesAgda folder = do
  fs <- getAllFiles folder
  mapM (\f -> do
    print f
    _ <- readProcess "agda" ["--verbose=0", "-i", dropFileName f </> "", "-vprofile:7", f] []
    stat <- getFileStatus $ f -<.> "agdai"
    return (f, [round $ fromIntegral (fileSize stat)/1000])
    ) fs

-- | Get all filesizes for all versions in the given folder
getAllFileSizes :: FilePath -> IO [(FilePath, [Int])]
getAllFileSizes folder = do
  fs <- getAllFiles folder
  mapM (\f -> (f,) <$> getFileSizes f) fs

-- | Get a table of filesizes with the provided labels for the head and tail elements (in case they are different)
getFileTable :: (Show a) => [Version] -> String -> String -> [(FilePath, [a])] -> String
getFileTable vs l1 l2 res = do
  let tableHeader = intercalate "|" ("File:" : map show vs) ++ "\n" ++ intercalate "|" (replicate (length vs + 1) "---")
  unlines $ tableHeader : map (\(n, sizes) -> intercalate "|" $ n:(show (head sizes) ++ ' ':l1):map ((++ ' ':l2) . show) (tail sizes)) res

-- | get all files in the folder
getAllFiles :: FilePath -> IO [FilePath]
getAllFiles f = do
  if hasExtension f then
    if takeExtension f `elem` [".sa", ".agda"] then
      return [f]
    else return []
  else do
    fs <- listDirectory f
    concat <$> mapM (getAllFiles . (f </>)) fs

-- | Get the timestats data that actually triggered
collectNonZero :: IO [(String, TimeStats)]
collectNonZero = filter (\(_, TimeStats n c) -> c > 0) <$> TimeStats.collect

-- | Regen the files for the complete set of data dumps
regenFiles :: Bool -> FilePath -> [Version] -> FilePath -> ([Float] -> Float) -> IO ()
regenFiles percentageEnabled root vs f repeatCombiner = do
  fs <- processFolderRaw f
  mapM_ (\fp -> do
    print fp
    res <- loadFiles vs $ "raw" </> fp
    prefixes <- if last (splitDirectories fp) `elem` ["cacheOn", "cacheOff"] then do
      Prelude.lines <$> readFile ("experiments" </> takeDirectory fp </> "prefixes.md")
    else do
      Prelude.lines <$> readFile ("experiments" </> fp </> "prefixes.md")
    let msMap = Map.fromList [(Version0, MiliSec), (Version1, MiliSec), (Version2, MiliSec), (Agda, MiliSec)]
    createDirectoryIfMissing True $ root </> fp
    writeFile (root </> fp </> "stats.md") $ displayResults "" msMap $ computeStats res
    writeFile (root </> fp </> "averages.md") $ (genTablesNoPost MiliSec . combineFiles prefixes average average . combineRepeatRuns repeatCombiner) res
    writeFile (root </> fp </> "times.md") $ displayResults "" msMap $ combineRepeatRuns repeatCombiner res
    when percentageEnabled $ do
      let per = toPercentages $ combineRepeatRuns repeatCombiner res
      writeFile (root </> fp </> "percentages.md") $ displayResults "" (Map.fromList [(Version0, MiliSec), (Version1, NanoSec), (Version2, NanoSec)]) per
      writeFile (root </> fp </>  "summary.md") $ (genTables MiliSec . combineFiles prefixes median geoMean) per
    ) fs

-- | Get all folders that contain Simple Agda files inside the folder relative to experiments
processFolder :: FilePath -> IO [FilePath]
processFolder folder = do
  f <- listDirectory $ "experiments" </> folder
  let folders = map (folder </>) $ filter (not . hasExtension) f
  let curr = [folder | any ((== ".sa") . takeExtension) f]
  fs <- mapM processFolder folders
  return $ curr ++ concat fs

-- | Get all folders that contain raw dump files inside the folder relative to raw
processFolderRaw :: FilePath -> IO [FilePath]
processFolderRaw folder = do
  f <- listDirectory $ "raw" </> folder
  let folders = map (folder</>) $ filter (not . hasExtension) f
  let curr = [folder | any ((== ".dump") . takeExtension) f]
  fs <- mapM processFolderRaw folders
  return $ curr ++ concat fs

-- | Get all folders that contain agda files in the directory relative to agdaFiles
processFolderAgda :: FilePath -> IO [FilePath]
processFolderAgda folder = do
  f <- listDirectory $ "agdaFiles" </> folder
  let folders = map (folder </>) $ filter (not . hasExtension) f
  let curr = [folder | any ((== ".agda") . takeExtension) f]
  fs <- mapM processFolderAgda folders
  return $ curr ++ concat fs

-- | Delete all experiment results in the provided folder that start with the given prefix (Version0, Agda etc.)
deleteExperiments :: String -> FilePath -> IO ()
deleteExperiments prefix fs = do
  folders <- processFolderRaw fs
  mapM_ (\f -> do
    files <- listDirectory ("raw" </> f)
    mapM_ (\file -> do
      when (prefix `isPrefixOf` takeFileName file) $ removeFile ("raw" </> f </> file)) files) folders

