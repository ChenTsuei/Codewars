module Snail where

snail :: [[Int]] -> [Int]
snail [] = []
snail (xs:[]) = xs
snail xss = head xss ++ (map last $ xss_body) ++ reverse (last xss)
           ++ (reverse $ map head $ xss_body) ++ (snail $ map body $ xss_body)
  where body = init . tail
        xss_body = body xss

{-
module Snail where

import Data.List

snail :: [[Int]] -> [Int]
snail [] = []
snail (xs:xss) = xs ++ (snail . reverse . transpose) xss
-}