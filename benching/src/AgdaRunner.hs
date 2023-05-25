module AgdaRunner where

import Control.Monad.Except (ExceptT (..), MonadError (..), runExceptT, when)
import Control.Monad.IO.Class (MonadIO (..))
import Data.Function (on)
import qualified Data.List as List
import Data.Maybe (fromJust, fromMaybe, listToMaybe)
import System.Directory (removeFile, doesFileExist)
import System.Environment (getArgs, getProgName)
import System.FilePath ((-<.>), (</>), dropFileName)
import Debug.TimeStats (TimeStats (TimeStats))
import System.Process ( readProcess )
import Text.Read (readMaybe, readEither)

-- | Timing data collected from Agda
data TimingData = Data
  { total :: Integer,
    typeChecking :: Integer,
    scopeChecking :: Integer,
    imports :: Integer,
    deserialization :: Integer,
    serialization :: Integer
  }
  deriving (Show)

test :: IO ()
test = do
  let filepath = "agdaFiles/declSanityCheck/50decls/Decls50Test1.agda"
  --r <- readProcess "agda" ["--verbose=0", "-i", dropFileName filepath </> "", "-vprofile:7", filepath] []
  r <- timeAgdaFile True filepath
  print r

-- | Covnert the timing data to the format used by the Simple Agda runner so it can processed in the same way
timingDataToTimeStats :: TimingData -> [(String, TimeStats)]
timingDataToTimeStats Data {
    total = tot,
    typeChecking= tc,
    scopeChecking = sc,
    imports = i,
    deserialization = deser,
    serialization = ser} = [
        ("Total", h tot),
        ("TypeChecking", h tc),
        ("ScopeChecking", h sc),
        ("Dealing with imports", h i),
        ("Deserialization", h deser),
        ("Serialization", h ser)]
    where
        h x = TimeStats (fromInteger $ x * 1000000) 1 --ms to nano

-- | Times an Agda file. If cacheUse enabled Agda will be allowed to use interface files otherwise it won't.
timeAgdaFile :: Bool -> FilePath -> IO TimingData
timeAgdaFile useCache filepath = do
  -- Always remove the interface file for the file being type-checked
  b <- doesFileExist $ filepath -<.> "agdai"
  when b $ removeFile $ filepath -<.> "agdai"

  -- Call agda:
  -- - --ignore-interfaces prevents the use of interfaces of imported files
  -- - --verbose=0 ensures we get a clean stdout for parsing the timing data
  -- - -i folder is necessary to get Agda to work even if files are in a different location than the working directory of this code
  -- - -vprofile:7 is the code used for timing data in Agda 2.6.2.2
  r <- readProcess "agda" ((["--ignore-interfaces" | not useCache]) ++ ["--verbose=0", "-i", dropFileName filepath </> "", "-vprofile:7", filepath]) []
  let lin = lines r
  -- Validate parsed timing data
  let dMaybe = map (\l -> (l,) . processLine . words $ l) lin
  d <- mapM (\(l, v) -> case v of
    Left _ -> do print $ "Problem" ++ l; return []
    Right x0 -> return [x0]) dMaybe
  return $ createTimingData $ concat d
  where
    processLine (n : c : tail) = do
      m1 <- readEither (filter (',' /=) $ take (length c - 2) c)
      m2 <- mapM  (\s -> readEither $ filter (',' /=) $ drop 1 $ take (length s - 3) s) $ listToMaybe tail
      return (n, (m1, m2))
    processLine _ = error "parsing mistake"

    -- Get the timingdata that we care about.
    createTimingData :: [(String, (Integer, Maybe Integer))] -> TimingData
    createTimingData d =
      Data
        { total = getNormal "Total" d,
          typeChecking = getAccum "Typing" d,
          scopeChecking = getNormal "Scoping" d,
          imports = getNormal "Import" d,
          deserialization = getNormal "Deserialization" d + getAccum "Parsing" d,
          serialization = getAccum "Serialization" d
        }

    getNormal s = maybe 0 fst . lookup s
    getAccum s = maybe 0 (fromMaybe 0 . snd) . lookup s