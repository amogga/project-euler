module Problem.Problem5.P5 where


problem5 :: Int
problem5 = foldl1 lcm [1..20]

problem5Naive :: Int
problem5Naive = until isDivisibleBy1to20 (+2) 20
    where
    isDivisibleBy1to20 num = all (\x -> num `mod` x == 0) [1..20]
