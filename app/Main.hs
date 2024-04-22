module Main (main) where

import Problem.Problem7.P7

main :: IO ()
main = do
    res <- problem7Naive
    print res