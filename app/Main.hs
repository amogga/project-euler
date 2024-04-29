module Main (main) where

import Problem.Problem16.P16 (problem16)
-- import Criterion.Main

main :: IO ()
main = do
    print problem16

-- main :: IO ()
-- main = defaultMain
--     [ bgroup "Problem 10"
--         [ bench "1" $ whnf sum $ primes 10,
--           bench "5"  $ whnf sum $ primes 2000000
--         ]
--     ]
