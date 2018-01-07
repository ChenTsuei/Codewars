module CamelCase.JorgeVS.Kata where

import Data.Char (toUpper)

camelCase :: String -> String
camelCase = concatMap (\(x:xs) -> toUpper x:xs) . words