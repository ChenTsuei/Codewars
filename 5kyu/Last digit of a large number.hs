module LastDigit where

lastDigit :: Integer -> Integer -> Integer
lastDigit a b = pow (mod a 10) b
  where pow a 0 = 1
        pow a b = 
          let t = pow a (div b 2)
          in mod ((if odd b then a else 1) * (mod t 10) * (mod t 10)) 10

{-
module LastDigit where

lastDigit :: Integer -> Integer -> Integer
lastDigit a b = ((a `rem` 10) ^ ((b - 1) `rem` 4 + 1)) `rem` 10
-}