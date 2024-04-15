module Problem2 (problem2) where

problem2 :: Int
problem2 = sum $ takeWhile (< 4000000) (filter even fibonacciSeries)

fibonacciSeries :: [Int]
fibonacciSeries = map fibonacci [0..]

fibonacci :: Int -> Int
fibonacci 0 = 0 
fibonacci 1 = 1
fibonacci n = fibonacci (n-2) + fibonacci (n-1)