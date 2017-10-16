module ClassExt where 

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

class (Eq1 a) => Ord1 a where
  (<), (<=), (>=), (> :: a -> a -> Bool
  max, min :: a -> a -> a
  compare  :: a -> a -> Ordering
 {- Minimal complete definition: either compare or <= -}
 
class (Eq a, Printable a) => MyClass a where
  ...
-}

class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab x = if doesEnrageMork x == True && doesEnrageGork x == True
                    then stomp $ stab x
                    else
                      if doesEnrageMork x == True
                      then stomp x 
                      else
                        if doesEnrageGork x == True
                        then stab x
                        else x

{- Вариант ниже не работает
class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab x | doesEnrageMork x == True && doesEnrageGork x == True = stomp stab x
                  | doesEnrageMork x == True = stomp x
                  | doesEnrageGork x == True = stab x
                  | otherwise                = x-}

{-
show 5
show [True,5.2}

read "5" :: Double
read "[5,2]" :: Double

reads "5 rings" : [(Int,String)]
-}