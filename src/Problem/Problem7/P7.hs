module Problem.Problem7.P7 (problem7Naive) where

import Algorithm.Prime.PrimalityTest

problem7Naive :: IO Integer 
problem7Naive = problem7Naive' 3 1
    where
    problem7Naive' :: Integer -> Integer -> IO Integer
    problem7Naive' n nthprime = do 
        prime <- isPrime n 3
        if prime && nthprime + 1 == 10001 then return n
        else problem7Naive' (n+2) (if prime then nthprime + 1 else nthprime)