# 8.2 Intermission: Exercises

```
let applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f . applyTimes (n-1) f $ b

applyTimes 5 (+1) 5 = 10
```

# 8.6 Chapter Exercises

1. d
2. b
3. d
4. b

## Reviewing currying

```
cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"
```

1. "woops mrow woohoo!"
2. "1 mrow haha"
3. "woops mrow 2 mrow haha"
4. "woops mrow blue mrow haha"
5. "pink mrow haha mrow green mrow woops mrow blue"
6. "are mrow pugs mrow awesome"

## Recursion

1.
```hs
dividedBy 15 2 =
  go 15 2 0
    | 15 < 2 -- false
    | otherwise = go (15 - 2) 2 (0 + 1)
      go 13 2 1
        | 13 < 2 -- false
        | otherwise = go (13 - 2) 2 (1 + 1)
          go 11 2 2
            | 11 < 2 -- false
            | otherwise = go (11 - 2) 2 (2 + 1)
              go 9 2 3
                | 9 < 2 -- false
                | otherwise = go (9 - 2) 2 (3 + 1)
                  go 7 2 4
                    | 7 < 2 -- false
                    | otherwise = go (7 - 2) 2 (4 + 1)
                      go 5 2 5
                        | 5 < 2 -- false
                        | otherwise = go (5 - 2) 2 (5 + 1)
                        go 3 2 6
                          | 3 < 2 -- false
                          | otherwise = go (3 - 2) 2 (6 + 1)
                          go 1 2 7
                            | 1 < 2 = (7, 1)
```

2.
```hs
mySum :: (Eq a, Num a ) => a -> a
mySum 0 = 0
mySum x = x + mySum(x - 1)
```

3.
```hs
multiRecursive :: (Integral a) => a -> a -> a
multiRecursive 0 _ = 0
multiRecursive _ 0 = 0
multiRecursive x y = x + multiRecursive x (y - 1)
```

## Fixing divided by

see [dividedBy](dividedBy.hs).

## McCarthy 91 function

see [mc91](mc91.hs).
