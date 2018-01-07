import Data.List

digs :: Integer -> [Integer]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

undigs :: [Integer] -> Integer
undigs = foldl (\acc x -> acc * 10 + x) 0

descendingOrder :: Integer -> Integer
descendingOrder = undigs . sortBy (\a b -> if a < b then GT else LT) . digs

-- A simpler version by sort chars rather than digits
-- descendingOrder = read . sortBy (comparing Down) . show 

-- Can be simpler by reverse instead of sortBy
-- descendingOrder = read . reverse . sort . show