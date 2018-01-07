module Codewars.Kata.Dubstep where

{-- My first version, but the pattern matching is too complicated
wub2Space :: String -> String
wub2Space [] = ""
wub2Space (x1:[]) = x1:""
wub2Space (x1:x2:[]) = x1:x2:""
wub2Space (x1:x2:x3:xs) =
  if x1:x2:x3:"" == "WUB"
  then ' ' : wub2Space xs
  else x1 : wub2Space (x2:x3:xs)

songDecoder :: String -> String
songDecoder = unwords . words . wub2Space

--}

{-- More elegance
songDecoder :: String -> String
songDecoder = unwords . words . wub2Space
  where wub2Space [] = []
        wub2Space ('W':'U':'B':xs) = ' ' : wub2Space xs
        wub2Space (x:xs) = x : wub2Space xs
--}

-- The Best Version

import Data.List.Split

songDecoder :: String -> String
songDecoder = unwords . filter (not . null) . splitOn "WUB"