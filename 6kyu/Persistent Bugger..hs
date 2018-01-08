module Codewars.G.Persistence where

persistence :: Int -> Int
persistence n
  | n < 10 = 0
  | otherwise = 1 + persistence (loop n)
  where loop 0 = 1
        loop n = (n `mod` 10) * loop (n `div` 10)

-- persistence n = if n < 10 then 0 else 1 + persistence (product $ map digitToInt $ show n)