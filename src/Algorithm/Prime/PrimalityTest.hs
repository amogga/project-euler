module Algorithm.Prime.PrimalityTest (isPrime) where

import Control.Monad
import System.Random

isPrime :: Integer -> Int ->  IO Bool
isPrime n k
    | n <= 1 || n == 4 = return False
    | n <= 3 = return True
    | otherwise = do 
        let d = until odd (`div` 2) (n-1)
        trueMiillerTestIterations <- replicateM k (miillerTest d n)
        let iters = takeWhile id trueMiillerTestIterations
        return $ length iters == k

miillerTest :: Integer -> Integer ->  IO Bool
miillerTest d n = do 
    a <- randomRIO (2, n-2)
    let x = (a ^ d) `mod` n
    return $ (x == 1 || x == n - 1) || innerMiillerRecursion d n x     

innerMiillerRecursion :: Integer -> Integer -> Integer -> Bool
innerMiillerRecursion d n x
    | xn == 1 || d == n - 1  = False
    | xn == n - 1 = True
    | otherwise = innerMiillerRecursion (d * 2) n xn
    where 
        xn = (x * x) `mod` n