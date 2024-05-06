module Algorithm.Numerics.Integer where
import Data.Char (digitToInt)

integerDigits :: Int -> [Int]
integerDigits n = map digitToInt $ show $ abs n

-- integerDigits :: (Integral x) => x -> [x]
-- integerDigits 0 = [0]
-- integerDigits x = integerDigits' x
--   where
--     integerDigits' 0 = []
--     integerDigits' n = integerDigits' (n `div` 10) ++ [n `mod` 10]

integersJoin :: [Int] -> Int
integersJoin = foldl (\acc n -> acc * 10 ^ integerCount n + n) 0

integerCount :: Int -> Int
integerCount 0 = 1
integerCount n = floor $ logBase (10 :: Double) (abs $ fromIntegral n) + 1

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
