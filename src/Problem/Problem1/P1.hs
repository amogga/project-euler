module Problem.Problem1.P1 (problem1, problem1Simple) where

problem1 :: Int
problem1 = foldl (\acc n -> if divisibleBy3or5 n then acc + n else acc) 0 [1..1000-1]

problem1Simple :: Int 
problem1Simple = sum [n | n <- [1..1000-1], divisibleBy3or5 n]

divisibleBy3or5 :: Int -> Bool
divisibleBy3or5 n = mod n 3 == 0 || mod n 5 == 0