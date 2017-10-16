module OddsOnly where

import Prelude hiding (length, (++), null)

length :: [a] -> Int
length []       = 0
length (_:xs)   = 1 + length xs

(++) :: [a] -> [a] -> [a]
[]     ++ ys = ys
(x:xs) ++ ys = x : xs ++ ys

null :: [a] -> Bool
null [] = True
null _  = False



-- GHCi> oddsOnly [2,5,7,10,11,12]
-- [5,7,11]

oddsOnly :: Integral a => [a] -> [a]
oddsOnly []     = []
oddsOnly (x:xs) = if odd x then x : oddsOnly xs else oddsOnly xs