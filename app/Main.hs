module Main where

import qualified Data.Map as Map
import Data.List (sortOn)

listOfMaps :: [Map.Map String String]
listOfMaps = 
  [ Map.fromList [("make", "Nokia"), ("model", "216"), ("color", "Black")]
  , Map.fromList [("make", "Apple"), ("model", "2"), ("color", "Silver")]
  , Map.fromList [("make", "Huawei"), ("model", "50"), ("color", "Gold")]
  , Map.fromList [("make", "Samsumg"), ("model", "7"), ("color", "Blue")]
  ]
  
listOfPowers :: [Int]
listOfPowers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

matrix :: [[Int]]
matrix = 
    [ [1, 2, 3, 1]
    , [4, 5, 6, 0]
    , [7, 8, 9, -1]
    ]

sortByKey :: String -> [Map.Map String String] -> [Map.Map String String]
sortByKey key maps = 
  sortOn (\m -> Map.lookup key m) maps
  
powerList :: Int -> [Int] -> [Int]
powerList power numbers = 
    map ( \n -> n ^ power ) numbers
    
transposeMatrix :: [[a]] -> [[a]]
transposeMatrix ([]:_) = []
transposeMatrix matrix = (map head matrix) : transposeMatrix (map tail matrix)



main :: IO ()
main = do     
  print "======= EXERCISE 1 ========\n"
  putStrLn "Which key to sort by?"
  key <- getLine
  let sortedMaps = sortByKey key listOfMaps
  mapM_ print sortedMaps
  print "======= EXERCISE 2 ========\n"
  putStrLn "Write a power: "
  powerStr <- getLine
  let power = read powerStr :: Int
  let poweredList = powerList power listOfPowers
  print poweredList
  print "======= EXERCISE 3 ========\n"
  let transposedMatrix = transposeMatrix matrix
  print transposedMatrix
  print "======= EXERCISE 4 ========\n"
