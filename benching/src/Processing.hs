module Processing where

import Data.List (groupBy, isPrefixOf, sort, sortOn)
import Data.List.Split (splitOn)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromJust, fromMaybe, mapMaybe)
import Data.Set (Set)
import qualified Data.Set as Set
import qualified Data.Text as Text
import Debug.TimeStats (TimeStats (..))
import Debug.Trace (trace)
import System.Directory (listDirectory)
import System.FilePath (takeExtension, takeFileName, (</>))

data ExperimentRes a = Res
  { dataSet :: Map (Version, FilePath, String) a,
    versionsUsed :: Set Version,
    filesRun :: Set FilePath,
    labels :: Map FilePath (Set String)
  }
  deriving (Show)

empty :: ExperimentRes a
empty = Res Map.empty Set.empty Set.empty Map.empty

union :: ExperimentRes a -> ExperimentRes a -> ExperimentRes a
union l r =
  Res
    { dataSet = Map.union (dataSet l) (dataSet r),
      versionsUsed = Set.union (versionsUsed l) (versionsUsed r),
      filesRun = Set.union (filesRun l) (filesRun r),
      labels = Map.unionWith Set.union (labels l) (labels r)
    }

data Version = Version0 | Version1 | Version2 | Agda deriving (Show, Eq)

instance Ord Version where
  (<=) :: Version -> Version -> Bool
  Agda <= _ = True
  _ <= Agda = False
  Version0 <= _ = True
  Version1 <= Version0 = False
  Version1 <= _ = True
  _ <= Version2 = True
  Version2 <= _ = False

allVersions :: [Version]
allVersions = [Version0, Version1, Version2]

data Stats
  = Empty
  | Stats
      { avg :: Float,
        std :: Float,
        minimum :: Float,
        maximum :: Float
      }
  deriving (Eq)

-- | Load a raw data file
loadFile :: FilePath -> IO (Int, ExperimentRes TimeStats)
loadFile f = do
  contents <- readFile f
  let contents' = Text.pack contents
  let ls = Text.lines $ Text.strip contents'
  let i = read $ Text.unpack $ ls !! 1
  let v = case Text.unpack $ ls !! 2 of
        "Version0" -> Version0
        "Version1" -> Version1
        "Version2" -> Version2
        _ -> Agda
  let res = map (\x -> (Text.unpack $ head x, processFile $ tail x)) $ splitOn [Text.pack ""] (drop 5 ls)
  let res' = concatMap (\(f, n) -> map (f,) n) res
  let dataSet = Map.fromList $ map (\(f, (s, r)) -> ((v, f, s), r)) res'
  return
    ( i,
      Res
        { dataSet = dataSet,
          versionsUsed = Set.fromList [v],
          labels = Map.fromList (map (\(fp, stats) -> (fp, Set.fromList $ map fst stats)) res),
          filesRun = Set.fromList $ map fst res
        }
    )
  where
    processFile =
      map
        ( \x -> do
            let t = Text.splitOn (Text.pack ";") x
            (Text.unpack $ head t, TimeStats (read $ Text.unpack $ t !! 1) (read $ Text.unpack $ t !! 2))
        )

-- | Load all raw data files in the folder belonging to the provided versions combining results from the same run
loadFiles :: [Version] -> FilePath -> IO [ExperimentRes TimeStats]
loadFiles vs folder = do
  fs <- listDirectory folder
  ds <- mapM (\f -> loadFile $ folder </> f) $ filter ((== ".dump") . takeExtension) fs
  let fixedDS = filter (\(_, Res {versionsUsed = v}) -> head (Set.toList v) `elem` vs) ds
  let ds' = map (foldr1 union . map snd) $ groupBy (\(i1, _) (i2, _) -> i1 == i2) $ sortOn fst fixedDS
  return ds'

-- | Load an entire folder of raw data for the provided versions, grouped by the provided prefixes
loadExperiment :: [Version] -> [String] -> FilePath -> IO [(String, Map String (Map Version Float))]
loadExperiment vs prefixes folder = do
  res <- loadFiles vs folder
  return $ (combineFiles prefixes median geoMean . toPercentages . combineRepeatRuns median) res

-- | Load experiments using the average instead of the median
loadExperimentAvg :: [Version] -> [String] -> FilePath -> IO [(String, Map String (Map Version Float))]
loadExperimentAvg vs prefixes folder = do
  res <- loadFiles vs folder
  return $ (combineFiles prefixes average average . combineRepeatRuns average) res

-- | Compute stats of the experiments
computeStats :: [ExperimentRes TimeStats] -> ExperimentRes Stats
computeStats res = do
  let ls = foldr (\m x -> Map.unionWith Set.union x $ labels m) Map.empty res
  let vs' = foldr (\m x -> Set.union x $ versionsUsed m) Set.empty res
  let vs = Set.toAscList vs'
  let fs' = foldr (\m x -> Set.union x $ filesRun m) Set.empty res
  let fs = Set.toAscList fs'
  let ds = map dataSet res
  let newMap = concatMap (\f -> concatMap (\v -> map (\l -> ((v, f, l), getStats (v, f, l) ds)) (Set.toAscList $ fromJust $ Map.lookup f ls)) vs) fs
  Res {dataSet = Map.fromList newMap, versionsUsed = vs', filesRun = fs', labels = ls}
  where
    getStats :: (Version, FilePath, String) -> [Map (Version, FilePath, String) TimeStats] -> Stats
    getStats k ds = do
      let values = map (fromInteger . toInteger . timeStat) $ mapMaybe (Map.lookup k) ds
      if null values
        then Empty
        else Stats (average values) (stdev values) (foldr min (head values) values) (foldr max (head values) values)

average :: [Float] -> Float
average = uncurry (/) . foldr (\x (s, n) -> (s + x, n + 1)) (0, 0)

stdev :: [Float] -> Float
stdev xs = sqrt . average . map ((^ 2) . (-) (average xs)) $ xs

median :: [Float] -> Float
median x = sort x !! (length x `div` 2)

geoMean :: [Float] -> Float
geoMean xs = product xs ** (1 / fromIntegral (length xs))

roundTo :: (RealFrac a) => Int -> a -> a
roundTo i n = (/ (10 ^ i)) $ fromIntegral $ round $ n * 10 ^ i

-- | Combine repeated runs into a single number
combineRepeatRuns :: ([Float] -> Float) -> [ExperimentRes TimeStats] -> ExperimentRes Float
combineRepeatRuns f [] = empty
combineRepeatRuns f d@(x : xs) = do
  let newMap = Map.fromAscList $ map (\k -> (k,) . f $ mapMaybe (fmap (fromInteger . toInteger . timeStat) . Map.lookup k . dataSet) d) $ Map.keys $ dataSet x
  x {dataSet = newMap}

-- | Divides all times except for those of v0 by v0 time
toPercentages :: ExperimentRes Float -> ExperimentRes Float
toPercentages res@Res {dataSet = ds} = res {dataSet = Map.mapWithKey (\(v, f, l) t -> if v == Version0 then t else t / fromMaybe t (Map.lookup (Version0, f, l) ds)) ds}

-- | Combine the results of different files if they share the same prefix
combineFiles :: [String] -> ([Float] -> Float) -> ([Float] -> Float) -> ExperimentRes Float -> [(String, Map String (Map Version Float))]
combineFiles prefixes f g Res {dataSet = ds, filesRun = fs, labels = ls, versionsUsed = vs} = do
  let fsGroups = groupBy (\f1 f2 -> any (uncurry (&&)) $ zip (map (`isPrefixOf` takeFileName f1) prefixes) (map (`isPrefixOf` takeFileName f2) prefixes)) $ Set.toAscList fs
  let lsGroups = map (\g -> Map.filterWithKey (\k _ -> k `elem` g) ls) fsGroups
  let lsGroups' = map (\ls -> Set.filter (\v -> not ("TCMod:" `isPrefixOf` v || "TCAlias:" `isPrefixOf` v)) $ Map.foldr' Set.intersection (snd $ fromJust $ Map.lookupMin ls) ls) lsGroups
  zipWith (\fs' ls' -> (head $ filter (`isPrefixOf` takeFileName (head fs')) prefixes,) $ Map.fromAscList $ map (\l -> (l,) $ Map.fromAscList $ map (\v -> (v,) $ updateValue fs' v l) (Set.toAscList vs)) (Set.toAscList ls')) fsGroups lsGroups'
  where
    updateValue fs' Version0 l = f $ mapMaybe (\file -> Map.lookup (Version0, file, l) ds) fs'
    updateValue fs' v l = g $ mapMaybe (\file -> Map.lookup (v, file, l) ds) fs'