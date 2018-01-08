module Xbonacci where

xbonacci :: Num a => [a] -> Int -> [a]
xbonacci as n = loop as (sum as) n
  where loop _ _ 0 = []
        loop (x:xs) acc n =
          x : loop (xs ++ [acc]) (acc * 2 - x) (n - 1)