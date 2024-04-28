module Problem.Problem20.P20 (problem20) where

import Data.Char (digitToInt)

problem20 :: Int
problem20 = sum $ map digitToInt $ show $ factorial 100


factorial :: Integer -> Integer
factorial n = product [1..n]
