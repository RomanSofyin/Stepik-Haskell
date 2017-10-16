module Integration where

integration :: (Double -> Double) -> Double -> Double -> Double

integration f a b = if a == b then 0 else (h / 2) * (f a + 2 * helper 0 1 (a + h) + f b) where
    helper sum 1000 x = sum
    helper sum i   x = helper (sum + f x) (i + 1) (x + h)
    h = (b - a) / 1000