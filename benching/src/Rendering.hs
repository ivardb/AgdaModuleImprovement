module Rendering where

import Data.Bifunctor (second)
import Data.List (intercalate)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromJust)
import qualified Data.Set as Set
import Debug.TimeStats (TimeStats (..))
import Processing (ExperimentRes (..), Stats (..), Version, roundTo)

-- | Generate a latex table from the provided data per column and version and applying the provided post-processing
genLatexTable :: Bool -> Map String (Map Version a) -> [(String, String)] -> [Version] -> (a -> String) -> String
genLatexTable enableLabels ds labels versions post = unlines $ [header, tableHeader', "\\hline"] ++ [intercalate "\\\\\n" (map createRow labels)] ++ [footer]
  where
    header = "\\begin{tabular}{" ++ intercalate "|" (replicate (length versions + 1) "l") ++ "}"
    tableHeader = intercalate " & " (map show versions) ++ "\\\\"
    tableHeader' = if enableLabels then "Labels & " ++ tableHeader else tableHeader
    footer = "\\end{tabular}"
    createRow l = if enableLabels then snd l ++ " & " ++ createRow' l else createRow' l
    createRow' l = intercalate " & " $ map (\v -> post $ fromJust $ Map.lookup v $ fromJust $ Map.lookup (fst l) ds) versions

-- | Generate multiple tables and concat them vertically
genTables :: Scale -> [(String, Map String (Map Version Float))] -> String
genTables s = unlines . map (\(n, v) -> "\n## " ++ n ++ "\n" ++ genTable s v)

-- | Generate a table with the provided scaling for the head and percentages for the tail
genTable :: Scale -> Map String (Map Version Float) -> String
genTable s input = unlines $ tableHeader : map (\(r, (_, v1) : vs) -> intercalate "|" $ r : (show (scale s v1) ++ ' ' : show s) : map ((++ " %") . show . roundTo 2 . (\x -> x - 100) . (*) 100 . snd) vs) input'
  where
    input' = map (second Map.toAscList) $ Map.toAscList input
    cs = map fst $ snd $ head input'
    tableHeader = '\n' : intercalate "|" ("Labels" : map show cs) ++ '\n' : intercalate "|" (replicate (length cs + 1) "---")

-- | Generate a table but with a list of Floats for each value instead of a single float
genTable2 :: Scale -> Map String (Map Version [Float]) -> String
genTable2 s input = unlines $ tableHeader : map (\(r, (_, v1) : vs) -> intercalate "|" $ r : (show (scale s v1) ++ ' ' : show s) : map ((++ " %") . show . map (roundTo 2 . (\x -> x - 100) . (*) 100) . snd) vs) input'
  where
    input' = map (second Map.toAscList) $ Map.toAscList input
    cs = map fst $ snd $ head input'
    tableHeader = '\n' : intercalate "|" ("Labels" : map show cs) ++ '\n' : intercalate "|" (replicate (length cs + 1) "---")

-- | Generate tables while only applying scaling
genTablesNoPost :: Scale -> [(String, Map String (Map Version Float))] -> String
genTablesNoPost s = unlines . map (\(n, v) -> "\n## " ++ n ++ "\n" ++ genTableNoPost s v)

-- | Generate a table with only scaling
genTableNoPost :: Scale -> Map String (Map Version Float) -> String
genTableNoPost s input = unlines $ tableHeader : map (\(r, vs) -> intercalate "|" $ r : map ((++ " " ++ show s) . show . roundTo 2 . scale s . snd) vs) input'
  where
    input' = map (second Map.toAscList) $ Map.toAscList input
    cs = map fst $ snd $ head input'
    tableHeader = '\n' : intercalate "|" ("Labels" : map show cs) ++ '\n' : intercalate "|" (replicate (length cs + 1) "---")

data Scale = NanoSec | MiliSec | Sec

instance Show Scale where
  show :: Scale -> String
  show NanoSec = "ns"
  show MiliSec = "ms"
  show Sec = "s"

-- | Display the results in a markdown table scaled using the provided scaling on a per version basis
displayResults :: (Visualize a, Scalable a) => String -> Map Version Scale -> ExperimentRes a -> String
displayResults title s Res {filesRun = fs, dataSet = ds, versionsUsed = vs, labels = ls} =
  unlines $ ("# " ++ title) : map processFile fs'
  where
    fs' = Set.toList fs
    vs' = Set.toAscList vs
    tableHeader = '\n' : intercalate "|" ("Labels" : map show vs') ++ '\n' : intercalate "|" (replicate (length vs' + 1) "---")
    processFile f = unlines $ ("## " ++ f) : tableHeader : map (processLabel f) (Set.toAscList $ fromJust $ Map.lookup f ls)

    processLabel f l = intercalate "|" $ show l : map (\v -> maybe "-" (toString (fromJust $ Map.lookup v s) . scale (fromJust $ Map.lookup v s)) $ Map.lookup (v, f, l) ds) vs'

----------------------------------------------
-- Various classes for easier pretty-printing
-----------------------------------------------

class Visualize a where
  toString :: Scale -> a -> String
  default toString :: (Show a) => Scale -> a -> String
  toString s = (++ ' ' : show s) . show

class Scalable a where
  scale :: Scale -> a -> a

instance Visualize Stats where
  toString :: Scale -> Stats -> String
  toString _ Empty = "-"
  toString scale (Stats m s mi ma) =
    intercalate
      ", "
      [ "avg: " ++ show m ++ ' ' : show scale,
        "std: " ++ show s ++ ' ' : show scale,
        "min: " ++ show mi ++ ' ' : show scale,
        "max: " ++ show ma ++ ' ' : show scale
      ]

instance Visualize (Float, Float)

instance Visualize [Float]

instance Visualize Float

instance Visualize TimeStats where
  toString :: Scale -> TimeStats -> String
  toString s = (++ ' ' : show s) . show . timeStat

instance Scalable (Float, Float) where
  scale :: Scale -> (Float, Float) -> (Float, Float)
  scale s (x, y) = (scaleF s x, scaleF s y)

instance Scalable [Float] where
  scale :: Scale -> [Float] -> [Float]
  scale s = map (scaleF s)

instance Scalable TimeStats where
  scale :: Scale -> TimeStats -> TimeStats
  scale s (TimeStats n c) = TimeStats (scaleI s n) c

instance Scalable Float where
  scale = scaleF

instance Scalable Stats where
  scale :: Scale -> Stats -> Stats
  scale _ Empty = Empty
  scale s (Stats a st min max) = Stats (scaleF s a) (scaleF s st) (scaleF s min) (scaleF s max)

scaleI :: Integral a => Scale -> a -> a
scaleI NanoSec = id
scaleI MiliSec = (`div` 1000000)
scaleI Sec = (`div` 1000000000)

scaleF :: RealFrac a => Scale -> a -> a
scaleF NanoSec = roundTo 1
scaleF MiliSec = roundTo 1 . (/ 1000000)
scaleF Sec = roundTo 1 . (/ 1000000000)