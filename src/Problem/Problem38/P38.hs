module Problem.Problem38.P38 where

import Data.List (sort)
import Algorithm.Numerics.Integer (integerDigits, integerCount, integersJoin)

problem38 :: Int
problem38 = maximum [n | x <- [1 .. 9999], let n = concatenatedProduct x, isPandigital1To9 n]

isPandigital1To9 :: Int -> Bool
isPandigital1To9 n = [1..9] == (sort . integerDigits) n

concatenatedProduct :: Int -> Int
concatenatedProduct n = last $ takeWhile (\xs -> integerCount xs <= 9) $ scanl (\acc x -> integersJoin [acc, n * x]) 0 [1..9]
