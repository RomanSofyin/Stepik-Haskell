module On where

on :: (b -> b -> c) -> (a -> b) -> a -> a -> c
on op f x y = f x `op` f y


sumSquares = (+) `on` (^2)


multSecond = g `on` h

g = (*)
h = snd