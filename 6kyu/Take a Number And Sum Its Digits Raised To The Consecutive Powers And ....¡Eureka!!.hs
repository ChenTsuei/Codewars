module Codewars.G964.Sumdigpow where

digs :: Int -> [Int]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

digPow :: Int -> [Int] -> Int
digPow _ [] = 0
digPow n (x:xs) = x^n + digPow (n + 1) xs

sumDigPow :: Int -> Int -> [Int]
sumDigPow a b = [x | x <- [a..b], x == digPow 1 (digs x)]