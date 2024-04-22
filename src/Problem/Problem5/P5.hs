module Problem.Problem5.P5 where 

problem5 :: Int 
problem5 = until isDivisibleBy1to20 (+2) 20
    where
    isDivisibleBy1to20 num = all (\x -> num `mod` x == 0) [1..20]