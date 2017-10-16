module Swap where

-- curry id = (,)
-- uncurry (flip const) = snd

swap' = f (g h)

f = (,)

g = uncurry const

h = uncurry (flip const)