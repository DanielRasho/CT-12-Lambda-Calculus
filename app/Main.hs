module Main where

import qualified Data.Map as Map
import SortByKey (sortByKey)

listOfMaps :: [Map.Map String String]
listOfMaps = 
  [ Map.fromList [("make", "Nokia"), ("model", "216"), ("color", "Black")]
  , Map.fromList [("make", "Apple"), ("model", "2"), ("color", "Silver")]
  , Map.fromList [("make", "Huawei"), ("model", "50"), ("color", "Gold")]
  , Map.fromList [("make", "Samsumg"), ("model", "7"), ("color", "Blue")]
  ]

main :: IO ()
main = do     
  putStrLn "Which key to sort by?"
  key <- getLine
  let sortedMaps = sortByKey key listOfMaps
  mapM_ print sortedMaps