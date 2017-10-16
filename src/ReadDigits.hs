module ReadDigits where

import Prelude hiding (filter,takeWhile,dropWhile,span,break)
import Data.Char

filter :: (a -> Bool) -> [a] -> [a]
filter p [] = []
filter p (x:xs)
  | p x       = x : filter p xs
  | otherwise =  filter p xs

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile p (x:xs)
  | p x       = x : takeWhile p xs
  | otherwise = []

  
dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile _ [] = []
-- xs here is a local name of the (x:xs') list
dropWhile p xs@(x:xs')
  | p x       = dropWhile p xs'
  | otherwise = xs

span :: (a -> Bool) -> [a] -> ([a],[a])
span p xs = (takeWhile p xs, dropWhile p xs)

break :: (a -> Bool) -> [a] -> ([a],[a])
break p = span (not . p)

readDigits :: String -> (String, String)
readDigits = span isDigit

filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj _ _ [] = []
filterDisj p1 p2 (x:xs)
  | p1 x      = x : filterDisj p1 p2 xs
  | p2 x      = x : filterDisj p1 p2 xs
  | otherwise = filterDisj p1 p2 xs

{-
qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:[]) = [x]
qsort list = doQSort list 0 (length list)
  where
    doQSort xs l h = doQSort (doQSort xs l ((part xs) - 1)) (part xs) h
      where
        part (x:xs) = 1

qsort [] =[]
qsort xs'@(x:xs) = qsort ys ++ qsort zs
  where
    ys = filter (<x) xs'
    zs = filter (>=x) xs'
 -}