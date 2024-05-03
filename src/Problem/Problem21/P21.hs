module Problem.Problem21.P21 where

problem21 :: Int
problem21 = sum [n | n <- [2..10000], let m = properDivisorsSum n, properDivisorsSum m == n && n /= m]

properDivisorsSum :: Int -> Int
properDivisorsSum n = sum [ x | x <- [1..n-1], n `mod` x == 0]
