module Main (main) where

import Problem.Problem35.P35
import Criterion.Main
import Algorithm.Prime.PrimesGeneration (primes)

main :: IO ()
main = do
  print $ problem35Slow 1000000


-- main :: IO ()
-- main = defaultMain
--     [ bgroup "Problem 35"
--         [ bench "1" $ whnf problem35Slow 1000000 ]
--     ]
