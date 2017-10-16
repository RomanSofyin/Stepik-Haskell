module NTimes where

nTimes:: a -> Int -> [a]

nTimes x y | y == 0 = []
           | otherwise = x : nTimes x (y-1)