module SeqA where

seqA :: Integer -> Integer
seqA n | n == 0    = 1
       | n == 1    = 2
       | n == 2    = 3
       | n > 0     = seqA (n-1) + seqA (n-2) - 2 * seqA (n-3)
       | otherwise = error "arg must be >= 0"

{-
factorial6 n-1
  | n >= 0 = let
      helper acc 0 = acc
      helper acc n = helper (acc * n) (n - 1)
    in helper  1 n
  | otherwise = error "arg must be >= 0"
  
----------------------------------------------------
  
rootsDiff a b c = let
  (x1,x2) = roots a b c
  in x2 - x1
-}

seqA1 :: Integer -> Integer
seqA1 n | n == 0    = 1
        | n == 1    = 2
        | n == 2    = 3
        | n > 0     = let
            helper prev1 prev2 prev3 1 = prev1
            helper prev1 prev2 prev3 n = helper (prev1 + prev2 - 2 * prev3) prev1  prev2 (n - 1)
          in helper 2 1 0 n
        | otherwise = error "arg must be >= 0"
