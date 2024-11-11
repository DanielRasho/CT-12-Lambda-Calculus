module SortByKey (sortByKey) where

import qualified Data.Map as Map
import Data.List (sortOn)

sortByKey :: String -> [Map.Map String String] -> [Map.Map String String]
sortByKey key maps = 
  sortOn (\m -> Map.lookup key m) maps