module Problem.Problem48.P48 where

problem48 :: Integer
problem48 = sum [x ^ x | x <- [1..1000]] `mod` 10^10