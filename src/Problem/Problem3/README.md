# Problem 3
The prime factors of 13195 are 5, 7, 13, and 29. 

What is the largest prime factor of the number 600851475143?

## Important points to consider while tackling the problem
- 600851475143 is an odd number with _distinct_ _odd_ prime factors. 
- The [Miller-Rabin primality test](https://en.wikipedia.org/wiki/Miller%E2%80%93Rabin_primality_test) (nondeterministic/probabilistic algorithm) is utilized to test whether a number is prime or not.


## Solution

`problem3InnerRecursion` is the primary function for solving the problem. It takes three arguments: The number to factorize `num`, the starting odd number `n` from which to traverse the positive natural numbers set $\mathbb{N}$ for checking prime numbers, and an initial accumulator value `acc`. 

```haskell
problem3InnerRecursion :: Integer -> Integer -> Integer -> IO Integer
problem3InnerRecursion num n acc
    | acc * n == num = return n
    | otherwise = do
        isp <- isPrime n 3
        problem3InnerRecursion num (n + 2) (if isp && num `mod` n == 0 then acc * n else acc)
```


### Other Implementations
The Mathematica implementation is as follows
```mathematica
Max[First /@ FactorInteger[600851475143]]
```