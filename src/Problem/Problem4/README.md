# Problem 4
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is $9009 = 91 \times 99$.

Find the largest palindrome made from the product of two 3-digit numbers.

## Solution
We use a predicate for checking for palindromic numbers,

```haskell
isPalindromic :: Int -> Bool 
isPalindromic n = (reverse . show) n == show n
```

A naive implementation is to generate all the products of two 3-digit numbers, filter the palindromic numbers and then return the maximum palindromic number.

```haskell
problem4Naive :: Int 
problem4Naive = maximum $ filter isPalindromic [x * y | x <- [100..999], y <- [100..999]]
```

### Other Implementations
The implementation in Mathematica is as follows:
```mathematica
Select[Table[r1  r2, {r1, 100, 999}, {r2, 100, 999}] // Flatten, 
  ToString[#] == StringReverse[ToString[#]] &] // Max
```