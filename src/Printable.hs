module Printable where

{-
class Eq1 a where
  (==), (/=) :: a -> a -> bool
  x /= y  = not (x==y)
  x == y  = not (x/=y)

instance Eq1 Bool where
  True  == True  = True
  False == False = True
  _     == _     = False
  
instance (Eq1 a, Eq1 b) => Eq1 (a,b) where
  p1 == p2  =  fst p1 == fst p2 && snd p1 == snd p2
-}

class Printable a where
  toString :: a -> [Char]

instance Printable Bool where
  toString x | x == True = "true"
             | otherwise = "false"

instance Printable () where
  toString _ = "unit type"

instance (Printable a, Printable b ) => Printable (a,b) where
  toString (x1,x2) = "(" ++ toString x1 ++ "," ++ toString x2 ++ ")"