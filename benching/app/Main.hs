module Main where

import AgdaPrettyPrint (ppMain)
import AgdaRunner
import Control.Concurrent.Async (mapConcurrently, mapConcurrently_)
import Control.Monad (filterM, void)
import Control.Monad.Except (runExceptT)
import qualified Control.Monad.Except as V2
import Data.List (groupBy, isPrefixOf)
import Data.List.Split (chunksOf)
import qualified Data.Map as Map
import Data.Time.Clock
import GHC.Conc (ThreadId)
import GHC.Float (int2Float)
import GHC.IO (unsafePerformIO)
import GenMain (generateMain)
import Processing
import Rendering
import Runner
import System.CPUTime (getCPUTime)
import System.Directory (createDirectoryIfMissing, listDirectory)
import System.Environment (getArgs, setEnv)
import System.Exit (exitFailure)
import System.FilePath (hasExtension, splitFileName, takeExtension, takeFileName, (</>))
import qualified V0.Error as V0
import qualified V0.Modules as V0
import qualified V0.TypeChecking as V0
import qualified V1.Error as V1
import qualified V1.Modules as V1
import qualified V1.TypeChecking as V1
import qualified V2.Error as V2
import qualified V2.Modules as V2
import V2.TcMain (goFilename)
import qualified V2.TypeChecking as V2
import qualified V3.Error as V3
import qualified V3.Modules as V3
import qualified V3.TypeChecking as V3

main :: IO ()
main = do
  -- Enables gathering of time stats. Disabled during normal type checking
  setEnv "DEBUG_TIMESTATS_ENABLE" "ON"
  args <- getArgs
  if "--generate" `elem` args then mainGenerate else mainBench

mainBench :: IO ()
mainBench = do
  runAllInsideAgda 40 10 3 "declSanityCheck"
  runAllInsideAgda 40 10 3 "modParams"
  runAllInsideAgda 40 10 3 "modAlias"
  runAllInsideAgda2 40 10 3 "imports"

  regenFiles False "agdaFiles" [Agda] "declSanityCheck" median
  regenFiles False "agdaFiles" [Agda] "imports" median
  regenFiles False "agdaFiles" [Agda] "modParams" median
  regenFiles False "agdaFiles" [Agda] "modAlias" median

-- | Generate a agda files for a folder in experiments. Output stored in agdaFiles
generateAgda :: FilePath -> IO ()
generateAgda folder = do
  fs <- processFolder folder
  mapM_ (\f -> ppMain ("experiments" </> f) ("agdaFiles" </> f)) fs

-- | Get the filesizes for the given folder, a summary will be generated at the root with the average size of all leaf folders
fileSizes :: FilePath -> IO ()
fileSizes folder = do
  fs <- processFolder folder
  (res1, res2) <-
    unzip
      <$> mapConcurrently
        ( \f -> do
            print f
            let f' = "experiments" </> f
            prefixes <- readFile (f' </> "prefixes.md")
            let prefixes' = lines prefixes
            sz <- getAllFileSizes f'
            let sz' = groupBy (\(f1, _) (f2, _) -> any (uncurry (&&)) $ zip (map (`isPrefixOf` takeFileName f1) prefixes') (map (`isPrefixOf` takeFileName f2) prefixes')) sz
            deleteCaches f'
            writeFile (f' </> "filesizes.md") $ getFileTable allVersions "KB" "KB" sz
            let sums = map (foldr (zipWith (\x y -> int2Float x + y) . snd) (replicate (length allVersions) 0.0)) sz'
            let avgs = map (map (/ int2Float (length sz))) sums
            let avgs' = zipWith (\a b -> (head $ filter (`isPrefixOf` (takeFileName $ fst $ head a)) prefixes', b)) sz' avgs
            return
              ( map (\(pref, avg) -> (f ++ " " ++ pref, roundTo 1 (head avg) : map (\x -> roundTo 1 $ (x / head avg) * 100 - 100) (tail avg))) avgs',
                map (\(pref, avg) -> (f ++ " " ++ pref, map (roundTo 1) avg)) avgs'
              )
        )
        fs
  writeFile ("experiments" </> folder </> "fileSizeSummary.md") $ getFileTable allVersions "KB" "%" $ concat res1
  writeFile ("experiments" </> folder </> "fileSizeAverages.md") $ getFileTable allVersions "KB" "KB" $ concat res2
  return ()

-- | Collect the filesizes for Agda
agdaFileSizes :: FilePath -> IO ()
agdaFileSizes folder = do
  fs <- processFolderAgda folder
  (res1, res2) <-
    unzip
      <$> mapConcurrently
        ( \f -> do
            print f
            let f' = "agdaFiles" </> f
            prefixes <- readFile ("experiments" </> f </> "prefixes.md")
            let prefixes' = lines prefixes
            sz <- getAllFileSizesAgda f'
            let sz' = groupBy (\(f1, _) (f2, _) -> any (uncurry (&&)) $ zip (map (`isPrefixOf` takeFileName f1) prefixes') (map (`isPrefixOf` takeFileName f2) prefixes')) sz
            deleteCaches f'
            writeFile (f' </> "filesizes.md") $ getFileTable [Agda] "KB" "KB" sz
            let sums = map (foldr (zipWith (\x y -> int2Float x + y) . snd) (replicate (length allVersions) 0.0)) sz'
            let avgs = map (map (/ int2Float (length sz))) sums
            let avgs' = zipWith (\a b -> (head $ filter (`isPrefixOf` (takeFileName $ fst $ head a)) prefixes', b)) sz' avgs
            return
              ( map (\(pref, avg) -> (f ++ " " ++ pref, roundTo 1 (head avg) : map (\x -> roundTo 1 $ (x / head avg) * 100 - 100) (tail avg))) avgs',
                map (\(pref, avg) -> (f ++ " " ++ pref, map (roundTo 1) avg)) avgs'
              )
        )
        fs
  writeFile ("agdaFiles" </> folder </> "fileSizeAverages.md") $ getFileTable [Agda] "KB" "KB" $ concat res2
  return ()

-- | Run iterations i - i + n on t threads for the provided folders. Folders will be split up over the provided number of threads
runAllInsideAgdaMultiple :: Int -> Int -> Float -> [FilePath] -> IO ()
runAllInsideAgdaMultiple i n t fs = do
  fss <- mapM processFolderAgda fs
  runAllAgda' i n t (concat fss)

-- | Run all nested folders in the path starting at iteration startingPoint for n total runs plus a warmup
runAllInsideAgda :: Int -> Int -> Float -> FilePath -> IO ()
runAllInsideAgda startingPoint n threads f = do
  fsOrg <- processFolderAgda f
  runAllAgda' startingPoint n threads fsOrg

runAllAgda' startingPoint n threads fsOrg = do
  let fss = chunksOf (ceiling $ int2Float (length fsOrg) / threads) fsOrg
  mapConcurrently_
    ( mapM_
        ( \folder -> do
            print folder
            prefixes <- readFile $ "experiments" </> folder </> "prefixes.md"
            benchmarkAgda
              (lines prefixes)
              True
              True
              False
              (Just ("raw/" </> folder))
              ("agdaFiles" </> folder)
              ("agdaFiles" </> folder)
              startingPoint
              n
            print $ folder ++ " done"
        )
    )
    fss

-- | Run all import experiments with both cacheOff and cacheOn
runAllInsideAgda2 :: Int -> Int -> Float -> FilePath -> IO ()
runAllInsideAgda2 startingPoint n threads f = do
  fsOrg <- processFolderAgda f
  let fss = chunksOf (ceiling $ int2Float (length fsOrg) / threads) fsOrg
  mapConcurrently_
    ( mapM_
        ( \folder -> do
            print $ folder ++ " cacheOff"
            prefixes <- readFile $ "experiments" </> folder </> "prefixes.md"
            benchmarkAgda
              (lines prefixes)
              True
              False
              False
              (Just ("raw/" </> folder </> "cacheOff"))
              ("agdaFiles" </> folder </> "cacheOff")
              ("agdaFiles" </> folder)
              startingPoint
              n
            print $ folder ++ " done"
        )
    )
    fss
  mapConcurrently_
    ( mapM_
        ( \folder -> do
            print $ folder ++ " cacheOn"
            prefixes <- readFile $ "experiments" </> folder </> "prefixes.md"
            benchmarkAgda
              (lines prefixes)
              True
              False
              True
              (Just ("raw/" </> folder </> "cacheOn"))
              ("agdaFiles" </> folder </> "cacheOn")
              ("agdaFiles" </> folder)
              startingPoint
              n
            print $ folder ++ " done"
        )
    )
    fss

-- | Run all experiments for both cacheOff and cacheOn
-- No multithreading as timestats does not work with it
runAllInside2 :: Int -> Int -> FilePath -> IO ()
runAllInside2 startingPoint n f = do
  fsOrg <- processFolder f
  mapM_
    ( \folder -> do
        print folder
        print "cacheOff"
        benchmark
          True
          False
          False
          (Just ("raw/" </> folder </> "cacheOff"))
          ("experiments/" </> folder </> "cacheOff")
          ("experiments/" </> folder)
          startingPoint
          n
        print $ folder ++ " done"
    )
    fsOrg
  mapM_
    ( \folder -> do
        print folder
        print "cacheOn"
        benchmark
          True
          False
          True
          (Just ("raw/" </> folder </> "cacheOn"))
          ("experiments/" </> folder </> "cacheOn")
          ("experiments/" </> folder)
          startingPoint
          n
        print $ folder ++ " done"
    )
    fsOrg
  mapM_ (\folder -> do deleteCaches ("experiments" </> folder)) fsOrg

-- | Run all files inside the provided folder in experiments
runAllInside :: Int -> Int -> FilePath -> IO ()
runAllInside startingPoint n folder' = do
  fsOrg <- processFolder folder'
  mapM_ (\folder -> do
    print folder
    benchmark
      True
      True
      False
      (Just ("raw/" </> folder))
      ("experiments/" </> folder)
      ("experiments/" </> folder)
      startingPoint
      n
    print $ folder ++ " done") fsOrg

-- | Run all the experiments with a type-checker to see if it works
verifyAll :: FilePath -> IO ()
verifyAll path = do
  fs1 <- getAllFiles $ "experiments/" </> path
  let fs = fs1
  print $ length fs
  failed <- concat <$> mapM h fs
  print $ "failed: " ++ show (length failed)
  putStrLn $ unlines failed
  where
    h f = do
      let prefixes = [currentDir, mainFilePrefix]
          (mainFilePrefix, name) = splitFileName f
          currentDir = ""
      v <- runExceptT (V0.getModules False prefixes name)
      val <- v `exitWith` return
      d <- V0.runErrorMonad $ V0.typeCheck (V0.Config False False False) val
      case d of
        Left err -> do
          print $ "Failed: " ++ f
          return [f]
        Right _ -> do
          print f
          return []
    exitWith res f =
      case res of
        Left x -> f x >> exitFailure
        Right y -> return y

mainGenerate :: IO ()
mainGenerate = generateMain