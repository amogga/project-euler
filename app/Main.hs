module Main (main) where

import Problem.Problem21.P21
-- import Criterion.Main

main :: IO ()
main = do
    print $ problem21

-- main :: IO ()
-- main = defaultMain
--     [ bgroup "Problem 10"
--         [ bench "1" $ whnf sum $ primes 10,
--           bench "5"  $ whnf sum $ primes 2000000
--         ]3545
--     ]
