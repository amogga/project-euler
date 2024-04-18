module Main (main) where

import System.Random
import Control.Monad
import Algorithm.Prime.PrimalityTest
import Problem.Problem3

main :: IO ()
main = do 
    -- let num = 13195
    let num = 600851475143
    let snum = (floor . sqrt) (fromIntegral num) + 1

    pt <- filterM (`isPrime` 3) [1..123]
    print $ sum pt