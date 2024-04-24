# Problem 9
A Pythagorean triplet is a set of three natural numbers, $a\< b \< c$, for which,
$$a^2 + b^2 = c^2$$

For example, $3^2 + 4^2 = 9 + 16 = 25 = 5^2$.

There exists exactly one Pythagorean triplet for which $a + b + c = 1000$.

Find the product $abc$.

## Solution
An important formula that reduces the search space to two variables is as follows, See [[Generating a triple]](https://en.wikipedia.org/wiki/Pythagorean_triple#Generating_a_triple):

$$a = m^2 - n^2,~~b = 2mn,~~c = m^2 + n^2$$

where $m,n \in \mathbb{N}^+$ satisfying,
$$m>n$$

To generate $m$ and $n$ s.t. $\\{(m,n)\in \mathbb{N}^+:m>n\\}$, we use the following infinite list generation code,

```haskell
[(m, n) | m <- [1..], n <- [1..m-1], m > n]
```


We can find the Pythagorean triplet as follows,

```haskell
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
```

### Other Implementations
Mathematica implementation is as follows.
```mathematica
With[{a = m^2 - n^2, b = 2 m  n, c = m^2 + n^2}, 
 a*b*c /. 
  Solve[a^2 + b^2 == c^2 && a + b + c == 1000 && m > n > 0, {m, n}, 
   Integers]]
```