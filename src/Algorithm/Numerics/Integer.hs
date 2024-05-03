module Algorithm.Numerics.Integer where

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]


rotateLeft :: Int -> Int
rotateLeft n = (n - leftmostDigit * exponent10) * 10 + leftmostDigit
  where
    leftmostDigit = n `div` exponent10
    exponent10 = 10 ^ digitCntm1
    digitCntm1 = floor $ logBase (10 :: Double) (fromIntegral n) :: Int

rotateRight :: Int -> Int
rotateRight n = n `div` 10 + n `rem` 10 * (10 ^ digitCntMinus1 n)

digitCntMinus1 :: Int -> Int
digitCntMinus1 n = floor $ logBase (10 :: Double) (fromIntegral n)
