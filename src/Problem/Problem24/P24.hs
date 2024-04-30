module Problem.Problem24.P24 where

import Data.List (permutations, sort)
import Data.Char (intToDigit)

problem24 :: Int
problem24 = read $ map intToDigit $ (sort . permutations) [0..9] !! (1000000 - 1)
