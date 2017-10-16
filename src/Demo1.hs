module Demo1 where

import Data.Char


twoDigits2Int :: Char -> Char -> Int

twoDigits2Int a b = if isDigit a then if isDigit b then digitToInt a * 10 + digitToInt b else 100 else 100