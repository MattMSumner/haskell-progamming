`:info (->)`

# 5.4 Intermission: Exercises

1. c
2. d
3. b
4. a
5. e

# 5.5 Intermission: Exercises

1. a
2. d
3. d
4. c
5. a
6. e
7. d WHAT?
8. a
9. c

# 5.6 Intermission: Exercises

1. Sure
2. See [aaa.hs]
3. See [abb.hs] for the only implementation. The behavior doesn't change.

# 5.7 Intermission: Exercises

1. myConcat :: [Char] -> [Char]
2. myMult :: Fractional a => a -> a
3. myTake :: Int -> [Char]
4. myCom :: Int -> Bool
5. myAlph :: Char -> Bool


# 5.8 Chapter Exercises

1. c
2. a
3. b
4. c

## Determine the type

1.
  1. 54 Num a => a
  2. (0, "doge") Num a => (a, [Char])
  3. (0, "doge") (Integer, [Char])
  4. False Bool
  5. 5 Int
  6. False Bool

2. Num
3. z :: Num a => a -> a
4. f :: Fractional
5. f :: [Char]

## Does it compile?

1. bigNum is a num so `bigNum $ 10` doesn't make sense. I'm not sure how to fix
   this.
2. Correction `y = princ "woohoo!"` => `y = print "woohoo!"`
3. You can't apply Nums to values. Maybe `a` should appear at the beginning of
   `c` and `d`?
4. There is no definition of `c`.

## Type variable or specific type constructor?

1. Constrained Polymorphic -> Polymorphic -> Concrete -> Concrete
2. Polymorphic -> Concrete -> Concrete
3. Polymorphic -> Constrained Polymorphic -> Concrete
4. Polymorphic -> Polymorphic -> Concrete

## Write a type signature

1. functionH :: [a] -> a
2. functionC :: Ord a => a -> a -> Bool
3. functionS :: (a, b) -> b

## Given a type, write the function

1.
```hs
i :: a -> a
i x = x
```

2.
```hs
c :: a -> b -> a
c x y = x
```

3.
```hs
c'' :: b -> a -> b
c'' x y = x
```

4.
```hs
c' :: a -> b -> b
c' x y = y
```

5.
```hs
r :: [a] -> [a]
r [] = []
r (x:xs) = r xs ++ [x]
```

6.
```hs
co :: (b -> c) -> (a -> b) -> (a -> c)
co f g x = f $ g x
```

7.
```hs
a :: (a -> c) -> a -> a
a f x = x
```

8.
```hs
a' :: (a -> b) -> a -> b
a' f x = f x
```

## Fix it

1.  See [sing](sing.hs)
2.  See [sing](sing.hs)
3.  See [arith3broken](arith3broken.hs)

## Type-Kwon-Do

1. h x = g $ f x
2. e x = w $ q x
3. xform (x, y) = (xz x, yz, y)
4. munge f g x = fst $ g $ f x

