module Avg where

{-
class Num a where 
  (+), (-), (*) :: a -> a -> a
  negate        :: a -> a
  abs           :: a -> a
  signum        :: a -> a
  fromInteger   :: Integer -> a
  
  x - y = x + negate y
  negate x = 0 - x
  
-- LAW  abs x * signum x == x

Num
    Real
        Integral (quot, rem (quotRem); div, mod (divMod); toInteger)
            Int
            Integer
    Fractional ((/); recip; fromRational)
        Floating (exp, sqrt, log, sin ...)
            Float
            Double
      
      (Real, Fractional) => RealFrac
          (RealFrac, Floating) => RealFloat

-}

avg :: Int -> Int -> Int -> Double
avg x y z = (fromRational(toRational (toInteger x + toInteger y + toInteger z))/3)