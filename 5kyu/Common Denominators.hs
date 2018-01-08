module Codewars.Kata.CommonDenominators where

type Ratio a = (a, a) -- Data.Ratio not suitable for this kata

convertFracs :: Integral a => [Ratio a] -> [Ratio a]
convertFracs xs = map (\(x, y) -> (div d y * x, d)) xs
  where d = foldl (\a (_, b) -> lcm a b) 1 xs