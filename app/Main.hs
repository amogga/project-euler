module Main (main) where

import Problem.Problem20.P20 (problem20)
-- import Criterion.Main

main :: IO ()
main = do
    print problem20

-- main :: IO ()
-- main = defaultMain
--     [ bgroup "Problem 10"
--         [ bench "1" $ whnf sum $ primes 10,
--           bench "5"  $ whnf sum $ primes 2000000
--         ]
--     ]
