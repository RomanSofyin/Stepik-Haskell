module Factorial where

factorial n = if n == 0 then 1 else n * factorial (n - 1)

factorial' 0 = 1
factorial' n = n * factorial' (n - 1)



factorial7 :: Integer -> Integer
factorial7 n | n >= 0    = helper
             | otherwise = error "arg must ne >= 0"
   where
     helper acc 0 = acc
     helper acc n = helper (acc * n) (n - 1)

