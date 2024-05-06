module Main (main) where

import Problem.Problem38.P38
--import Criterion.Main

main :: IO ()
main = do
  print problem38

-- main :: IO ()
-- main = defaultMain
--     [ bgroup "Problem 38"
--         [bench "1" $ whnf (\() -> problem38) ()]
--     ]
