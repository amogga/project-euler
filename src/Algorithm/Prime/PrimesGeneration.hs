module Algorithm.Prime.PrimesGeneration where

primes :: Int -> [Int]
primes m = 2 : [i | i <- [3,5..m], and [rem i p > 0 | p <- takeWhile (\p -> p * p <= i) $ primes m]]