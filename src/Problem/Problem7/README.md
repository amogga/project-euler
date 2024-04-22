# Problem 7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10001st prime number?

## Solution

### Naive Implemention

```haskell
problem7Naive :: IO Integer 
problem7Naive = problem7Naive' 3 1
    where
    problem7Naive' :: Integer -> Integer -> IO Integer
    problem7Naive' n nthprime = do 
        prime <- isPrime n 3
        if prime && nthprime + 1 == 10001 then return n
        else problem7Naive' (n+2) (if prime then nthprime + 1 else nthprime)
```

### Other Implementations
Mathematica implementation
```mathematica
Prime[10001]
```