module A9n where

import Data.Char

abbreviate :: String -> String
abbreviate [] = []
abbreviate (x:xs)
  | isAlpha x = (convert $ takeWhile isAlpha (x:xs)) ++ (abbreviate $ dropWhile isAlpha xs)
  | otherwise = x : abbreviate xs
  where convert s = if length s < 4 then s else head s:(show $ length s - 2) ++ [last s]