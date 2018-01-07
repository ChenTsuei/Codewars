module Difference where

difference :: Eq a => [a] -> [a] -> [a]
difference xs ys = [x | x <- xs, not (x `elem` ys)]