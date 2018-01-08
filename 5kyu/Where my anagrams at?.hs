module Anagram where

import Data.List

anagrams :: String -> [String] -> [String]
anagrams w ws = [x | x <- ws, p == sort x]
                where p = sort w

-- anagrams = filter . ((==) `on` sort)