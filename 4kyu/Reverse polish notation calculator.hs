module RPN where

calc :: String -> Double
calc str = 
  if null lst then 0 
  else (head . foldl loop []) lst
  where lst = words str
        loop (x1:x2:xs) "*" = (x1 * x2):xs
        loop (x1:x2:xs) "/" = (x2 / x1):xs
        loop (x1:x2:xs) "+" = (x1 + x2):xs
        loop (x1:x2:xs) "-" = (x2 - x1):xs
        loop xs s = read s:xs