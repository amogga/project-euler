module Algorithm.Prime.PrimalityTest (isPrime) where

import Control.Monad
import System.Random

-- Miller–Rabin primality test (Nondeterministic algorithm)

isPrime :: Integer -> Int ->  IO Bool
isPrime n k
    | n <= 1 || n == 4 = return False
    | n <= 3 = return True
    | otherwise = do 
        let d = until odd (`div` 2) (n-1)
        trueMillerTestIterations <- replicateM k (millerTest d n)
        return $ and trueMillerTestIterations

millerTest :: Integer -> Integer ->  IO Bool
millerTest d n = do 
    a <- randomRIO (2, n-2)
    let x = a ^ d `mod` n
    return $ (x == 1 || x == n - 1) || innerMillerRecursion d n x     

innerMillerRecursion :: Integer -> Integer -> Integer -> Bool
innerMillerRecursion d n x
    | xn == 1 || d == n - 1  = False
    | xn == n - 1 = True
    | otherwise = innerMillerRecursion (d * 2) n xn
    where 
        xn = (x * x) `mod` n