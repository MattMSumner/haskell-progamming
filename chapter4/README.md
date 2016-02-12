# 4.2 Intermission: Exercises

1.  Mood
2.  Blah or Woot
3.  changeMood :: Mood -> Mood
4.  changeMood Blah = Woot
    changeMood Woot = Blah
5.  See [changeMood](changeMood.hs)

Note: Not Equal is surprising `/=`

# 4.4 Intermission: Exercises

1. not True && True           // False
2. not (x == 6)               // This won't compile as x isn't defined
3. (1 * 2) > 5                // False
4. ["Merry"] > ["Happy"]      // True
5. [1, 2, 3] ++ "look at me!" // this is just plain wrong


# 4.7 Chapter Exercises

```hs
let awesome = ["Papuchon", "curry", "Haskell"]
let alsoAwesome = ["Quake", "The Simons"]
let allAwesome = [awesome, alsoAwesome]
```

1. length :: [a] -> Int
   length :: Foldable t => t a -> Int

2.
  1. 5
  2. 3
  3. 2
  4. 5

3.  `6 / length [1, 2, 3]` fails because `/` is taking `length` as it's second
    argument when it should be a number.
4.  `div 6 $ length [1, 2, 3]`
5.  Bool. True.
6.  Bool. False.
7.  `length allAwesome == 2` => True
    `length [1, 'a', 3, 'b']` won't work, mixing list element types
    `length allAwesome + length awesome` => 5
    `(8 == 8) && ('b' < 'a')` => False
    `(8 == 8) && 9` won't work as 9 isn't a bool
8.  See [palindrome](palindrome.hs)
9.  See [absolute](absolute.hs)
10. See [zipping](zipping.hs)

## Reading Syntax

1.
```hs
x = (+)
f xs = w `x` 1
    where w = length xs
```

2. `\ x -> x`
3. `\ (x:xs) -> x`
4. `f (a, b) = a`

## Match the function names to their types

1. c
2. b
3. a
4. d
