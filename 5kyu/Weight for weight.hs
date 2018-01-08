module Codewars.G964.WeightSort where

import Data.List
import Data.Char

orderWeight :: [Char] -> [Char]
orderWeight str = 
  let cmp a b
        | suma == sumb = if a < b then LT else GT
        | suma < sumb = LT
        | suma > sumb = GT
        where suma = sumDigs a
              sumb = sumDigs b
      sumDigs = sum . map digitToInt
  in unwords (sortBy cmp (words str))

{-
module Codewars.G964.WeightSort where
import Data.Char (digitToInt)
import Data.List (sortBy)
import Data.Ord  (comparing)

orderWeight :: [Char] -> [Char]
orderWeight = unwords . sortBy (comparing weight) . words
  where weight s = (sum . map digitToInt $ s, s)
-}