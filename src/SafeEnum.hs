module SafeEnum where

class (Eq a, Enum a, Bounded a) => SafeEnum a where 
  ssucc, spred :: a -> a
  ssucc x = if x == maxBound
            then minBound
            else succ x
  
  spred x = if x == minBound
            then maxBound
            else pred x