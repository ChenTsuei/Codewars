module Codewars.Kata.FindOdd where
import Data.List
-- | Given a list, find the [Int] that appears an 
--   odd number of times. The tests will always
--   provide such a number, and the list will
--   always contain at least one element.
findOdd :: [Int] -> Int
findOdd xs = (head . head) (filter (odd . length) (group (sort xs)))
-- My first solution is not very elegance, especially the use of head

-- The most elegance
-- findOdd = foldr1 xor

-- findOdd xs = head [x | x <- xs, odd . length . filter (==x) $ xs]