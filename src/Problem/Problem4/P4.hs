module Problem.Problem4.P4 (problem4Naive) where 

problem4Naive :: Int 
problem4Naive = maximum $ filter isPalindromic [x * y | x <- [100..999], y <- [100..999]]

isPalindromic :: Int -> Bool 
isPalindromic n = (reverse . show) n == show n