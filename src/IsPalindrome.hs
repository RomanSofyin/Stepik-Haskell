module IsPalindrome where

import Prelude hiding (last, init, reverse)

last :: [a] -> a
last (x:[]) =  x
last (_:xs) =  last xs

init :: [a] -> [a]
--init [x]  = []
init [_]    = []
init (x:xs) = x : init xs

{-
sum, product :: (Num a) => [a] -> a
maximum, minimum :: (Ord a) => [a] -> a
-}

reverse :: [a] -> [a]
reverse l  = rev l [] where
  rev [] a = a
  rev (x:xs) a = rev xs (x:a)

isPalindrome :: Eq a => [a] -> Bool
isPalindrome l = l == reverse l