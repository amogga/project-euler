module Problem.Problem6.P6 where 

problem6 :: Int
problem6 = sum rng ^ (2::Int) - sum [x ^ (2::Int) | x <- rng]
    where
    rng = [1..100]