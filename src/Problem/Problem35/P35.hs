module Problem.Problem35.P35 where

import Algorithm.Prime.PrimesGeneration (primes)

problem35Slow :: Int -> Int
problem35Slow n = let pnums = primes n in length $ filter (`areNumberCyclesPrimes` pnums) pnums

areNumberCyclesPrimes :: Int -> [Int] -> Bool
areNumberCyclesPrimes n pnums = all (\c -> odd c && c `elem` pnums) (drop 1 $ numberCycles n)

numberCycles :: Int -> [Int]
numberCycles n = iterate (\acc -> acc ++ [rotateRight (last acc)]) [n] !! digitCntMinus1 n

rotateRight :: Int -> Int
rotateRight n = n `div` 10 + n `rem` 10 * (10 ^ digitCntMinus1 n)

digitCntMinus1 :: Int -> Int
digitCntMinus1 n = floor $ logBase (10 :: Double) (fromIntegral n)
