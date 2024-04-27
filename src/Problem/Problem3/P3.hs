module Problem.Problem3.P3 (problem3) where

import Algorithm.Prime.PrimalityTest

problem3 :: IO Integer
problem3 = do
    let num = 600851475143
    problem3InnerRecursion num 3 1

problem3InnerRecursion :: Integer -> Integer -> Integer -> IO Integer
problem3InnerRecursion num n acc
    | acc * n == num = return n
    | otherwise = do
        isp <- isPrime n 3
        problem3InnerRecursion num (n + 2) (if isp && num `mod` n == 0 then acc * n else acc)
