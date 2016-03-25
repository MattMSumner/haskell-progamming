# 9.5 Intermission: Exercises

myEnumFromTo :: Enum a => a -> a -> [a]
myEnumFromTo x y
  | x <= y = x : myEnumFromTo (succ x) y
  | otherwise = []

# 9.6 Intermission: Exercises

1. See [words](words.hs).
2. See [lines](lines.hs).
3. See [groups](groups.hs).

# 9.7 Intermission: Exercises

1. `[(x, y) | x <- mySqr, y <- myCube]`
2. `[(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]`
3. `length [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]`
