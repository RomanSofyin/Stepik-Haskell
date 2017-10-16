module SumNcount where

roots a b c = (x1,x2) where
  x1 = (-b - d) / aTwice
  x2 = (-b + d) / aTwice
  d = sqrt $ b ^ 2 - 4 * a * c
  aTwice = 2 * a

{-
public static int getCountsOfDigits(long number) {
   return(number == 0) ? 1 : (int) Math.ceil(Math.log10(Math.abs(number) + 0.5));
  }
-}
  
{- count = if x == 0 then 1 else ceiling logBase 10 ((abs (x)) + 0.5) -}
{- count = if x == 0 then 1 else truncate (logBase 10 (abs x + 0.5)) -}
{-sumNcount :: Integer -> (Integer, Integer)-}
{-sumNcount :: Integer -> (Integer, Integer)-}

sumNcount x = (abs(sum), count) where
  sum = helper x 0 where
    helper 0 s = s
    helper n s = helper (quot n 10) (s + rem n 10)
  count = truncate ((+) (abs x) 0.5)