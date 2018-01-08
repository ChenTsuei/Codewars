module Codewars.G964.Tortoise where

race :: Int -> Int -> Int -> Maybe (Int, Int, Int)
race v1 v2 g
  | v1 >= v2 = Nothing
  | otherwise = Just $ time $ div (g * 3600) (v2 - v1)
  where time s = (div s 3600, div (mod s 3600) 60, mod s 60)