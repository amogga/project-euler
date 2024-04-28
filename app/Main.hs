module Main (main) where

import Problem.Problem13.P13 (problem13)
-- import Criterion.Main

main :: IO ()
main = do
    print problem13

-- main :: IO ()
-- main = defaultMain
--     [ bgroup "Problem 10"
--         [ bench "1" $ whnf sum $ primes 10,
--           bench "5"  $ whnf sum $ primes 2000000
--         ]
--     ]
