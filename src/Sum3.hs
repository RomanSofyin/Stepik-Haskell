module Sum3 where

import Prelude hiding (zip, zip3, unzip)

zip :: [a] -> [b] -> [(a,b)]
zip []     _      = []
zip as     []     = []
zip (a:as) (b:bs) = (a,b) : zip as bs

zip3 :: [a] -> [b] -> [c] -> [(a,b,c)]
zip3 (a:as) (b:bs) (c:cs) = (a,b,c) : zip3 as bs cs
zip3 _      _      _      = []

unzip :: [(a,b)] -> ([a],[b])
unzip []          = ([],[])
unzip ((x,y):xys) =
  let (xs,ys) = unzip xys
  in  (x:xs,y:ys)

sum2 :: Num a => [a] -> [a] -> [a]
sum2 []     []     = []
sum2 (x:xs) []     = x+0   : sum2 xs []
sum2 []     (y:ys) = y+0   : sum2 ys []
sum2 (x:xs) (y:ys) = (x+y) : sum2 xs ys

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 xs ys zs = sum2 xs $ sum2 ys zs
{-sum3 []     []     []     = []
sum3 (x:xs) []     []     = x : sum3 xs [] []
sum3 []     (y:ys) []     = y : sum3 [] ys []
sum3 []     []     (z:zs) = z : sum3 [] [] zs
sum3 (x:xs) (y:ys) [] = (x+y) : sum3 xs ys []
sum3 (x:xs) [] (z:zs) = (x+z) : sum3 xs [] zs
sum3 [] (y:ys) (z:zs) = (y+z) : sum3 [] ys zs
sum3 (x:xs) (y:ys) (z:zs) = x : sum3 xs ys zs-}

groupElems :: Eq a => [a] -> [[a]]
groupElems []     = []
groupElems (x:xs) =
  let spanRes = span (==x) (x:xs)
  in fst spanRes : (groupElems $ snd spanRes)