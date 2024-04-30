module Main (main) where

import Problem.Problem24.P24 (problem24)
-- import Criterion.Main

main :: IO ()
main = do
    print problem24

-- main :: IO ()
-- main = defaultMain
--     [ bgroup "Problem 10"
--         [ bench "1" $ whnf sum $ primes 10,
--           bench "5"  $ whnf sum $ primes 2000000
--         ]3545
--     ]
