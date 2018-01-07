module Codewars.Kata.DecodeMorse (decodeMorse) where

import Codewars.Kata.DecodeMorse.Preload (morseCodes)

import Data.Map.Strict ((!))
import Data.List.Split (splitOn)

decodeMorse :: String -> String
decodeMorse = unwords . words . concatMap (\x -> if null x then " " else morseCodes ! x) . splitOn " "

-- decodeMorse = unwords . filter (not . null) . map (concatMap (morseCodes!) . words) . splitOn "   "