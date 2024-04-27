module Problem.Problem10.P10 where

import Algorithm.Prime.PrimesGeneration

problem10 :: Int
problem10 = sum $ primes 2000000
