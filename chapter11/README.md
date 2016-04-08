# 11.4 Intermission: Exercises

1. Doggies is a type constructor
2. Doggies :: * -> *
3. Doggies String :: *
4. Husky 10 :: Num a => Doggies a
5. Husky (10 :: Integer) :: Doggies Integer
6. Mastiff "Scooby Doo" :: Doggies String
7. DogueDeBordeaux is both a type constructor and a data constructor
8. DogueDeBordeaux a :: DogueDeBordeaux a
9. DogueDeBordeaux "doggie!" :: DogueDeBordeaux String

# 11.5 Intermission: Exercises

1. Vehicle
2. See [transport](transport.hs#L12-L21)
3. See [transport](transport.hs#L23-L24)
4. Exception: Non-exhaustive patterns in function getManu
5. See [transport](transport.hs)

# 11.7 Intermission: Exercises

1. 1
2. 3
3. 65,536
4. 18446744073709551616 cardinality for Int
   Integer is an infinite set
5. 2 ^ 8

1. MakeExample :: Example
   Not in scope: data constructor ‘Example’
2. You can see here it is defined and determine it's typeclass
3. MakeExample :: Int -> MakeExample

1. See [too many goats](too_many_goats.hs#L13-L14)
2. See [too many goats](too_many_goats.hs#L16-L17)
3. See [too many goats](too_many_goats.hs#L19-L20)

# 11.8 Intermission: Exercises

1. 2 + 2 = 4
2. 256 + 2 = 258

# 11.9 Intermission: Jammin Exercises

1.  See [jammin](jammin.hs#L1)
2.  See [jammin](jammin.hs#L10-L12)
3.  2 ^ 64 * 4
4.  See [jammin](jammin.hs#L12)
5.  See [jammin](jammin.hs#L14-L20)
6.  See [jammin](jammin.hs#L22-L23)
7.  See [jammin](jammin.hs#L25-L29)
8.  See [jammin](jammin.hs#L2)
9.  See [jammin](jammin.hs#L31-L34)
10. See [jammin](jammin.hs#L36-L40)

# 11.10 Intermission: Exercises

```
data Garden =
    Gardenia Gardener
  | Daisy Gardener
  | Rose Gardener
  | Lilac Gardener
  deriving Show
```

# 11.12 Intermission: Exercises

1. 8
2. 16
3. 256
4. 8
5. 16
6. 65536

# 11.15 Intermission: Exercises

