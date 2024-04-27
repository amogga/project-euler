module Problem.Problem9.P9 (problem9) where

problem9 :: Integer
problem9 = findABCProduct $ head $ filter isABCAdditionSatisfied [(m, n) | m <- [1..], n <- [1..m-1], m > n]

findABCProduct :: (Integer,Integer) -> Integer
findABCProduct = multiplyABC . mnTupleToABCTuple
    where
    multiplyABC (a,b,c) = a * b * c

isABCAdditionSatisfied :: (Integer,Integer) -> Bool
isABCAdditionSatisfied mnTuple = (addABC . mnTupleToABCTuple) mnTuple == 1000
    where
    addABC (a,b,c) = a + b + c

mnTupleToABCTuple :: (Integer, Integer) -> (Integer, Integer, Integer)
mnTupleToABCTuple (m,n) = (a,b,c)
    where
    a = m * m - n * n
    b = 2 * m * n
    c = m * m + n * n
