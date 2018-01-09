module MultNumAsStrings where

-- | mulitply two numbers as strings
multiply :: String -> String -> String
multiply xs ys = show (read xs * read ys)