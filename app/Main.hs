module Main (main) where

import Problem.Problem10.P10
import Criterion.Main
import Algorithm.Prime.PrimesGeneration

-- main :: IO ()
-- main = do
--      print $ problem10

main :: IO ()
main = defaultMain 
    [ bgroup "Problem 10" 
        [ bench "1" $ whnf sum $ primes 10,
          bench "5"  $ whnf sum $ primes 2000000
        ]
    ]
    