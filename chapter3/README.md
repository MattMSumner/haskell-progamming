# 3.3 Intermission: Exercises

1. Yes
2. No
3. No
4. Yes

# 3.4 Intermission: Exercises

1. Syntax error. Infix operator should be surrounded by `()`
2. Syntax error. Single quotes should be double quotes.
3. Yes.

Note: Concat doesn't do what I expect. It is:

> The concatenation of all the elements of a container of lists.

# 3.7 Chapter Exercises

## Reading Syntax

1. 
  1. `concat [[1, 2, 3], [4, 5, 6]]`
  2. `(++) [1, 2, 3] [4, 5, 6]` => `(++) [1, 2, 3] [4, 5, 6]`
  3. `(++) "hello" " world"`
  4. `["hello" ++ " world]` => `["hello" ++ " world"]`
  5. `4 !! "hello"` => `"hello" !! 4`
  6. `(!!) "hello" 4`
  7. `take "4 lovely"` => `take 4 "lovely"`
  8. `take 3 "awesome"`

2. 
  1. d
  2. c
  3. e
  4. a
  5. b

## Building Functions

1. 
  1. `(++ "!")`
  2. `(!! 4)`
  3. `drop 9`
2. See [awesomeCurry](awesomeCurry.hs#L1-L5)
3. See [awesomeCurry](awesomeCurry.hs#L7-L8)
4. See [awesomeCurry](awesomeCurry.hs#L10-L11)
5. See [awesomeCurry](awesomeCurry.hs#L13-L18)
6. See [reverse](reverse.hs)
