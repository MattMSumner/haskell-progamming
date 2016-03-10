# 7.4 Intermission: Exercises

1. They are all equivalent
2. d
3.
  a. `f = \n -> n + 1`
  b. `addFive = \x -> \y -> (if x > y then y else x) + 5`
  c. `mflip f x y = f y x`

# 7.5 Intermission: Exercises

1.
  a. `k :: (a, b) -> a`
  b. `[char]`, Nope
  c. k1 and k3 will return 3

2. `f (a, b, c) (d, e, f) = ((a, d), (c, f))`

# 7.6 Intermission: Exercises

See [76exercises](76exercises.hs).

# 7.7 Intermission: Exercises

1.  1
2.  11
3.  22
4.  21
5.  12
6.  11
7.  21
8.  21
9.  22
10. 31
11. 23

# 7.8 Intermission: Exercises

1. Having otherwise at the top will always be matched and you'll never reach any
   other guards.
2. Nope it doesn't work the same. The first guard that returns true will return
   a value.
3. b
4. Any list of elements that are instances of Eq
5. `pal :: Eq a => [a] -> Bool`
6. c
7. Num
8. `numbers :: (Num a, Ord a, Num b) => a -> b`

# 7.12 Chapter Exercises

1. d
2. b
3. d
4. b
5. a

## Let's write code

1.
  a.

```hs
tensDigit = snd . divMod10 . fst . divMod10
          where divMod10 = flip divMod 10
```

  b. Yes
  c.

```hs
HunsD = snd . divMod100 . fst . divMod100
          where divMod100 = flip divMod 100
```

2.
```hs
foldBool :: a -> a -> Bool -> a
foldBool x y a = case a of
       True = x
       False = y
```

```hs
foldBool :: a -> a -> Bool -> a
foldBool x y a
       | a == True = x
       | a == False = y
```

3. 


