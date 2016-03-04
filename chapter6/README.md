`True > False`

# 6.5 Intermission: Exercises

`quotRem` returns a tuple of the quotient and remainder from division.
`divMod` returns a tuple of the result and remainder from division.
Are these the same?

# 6.7 Intermission: Exercises

1. This will work and return 5
2. This will work and return LT
3. This will not work due to different types
4. This will work and return false

# 6.12 Intermission: Exercises

See [612exercises](612exercises.hs)

# 6.14 Chapter Exercises

1. c
2. b
3. a
4. c
5. b

## Does it typecheck?

1. No, it isn't an instance of Show
2. No, it isn't an instance of Eq
3.
  a. Mood
  b. Error because 9 isn't a Mood
  c. Mood isn't an instance of Ord

4. Yes it does type check

## Given a datatype declaration, what can we do?

1. No it won't typecheck because Papu expects a Rock and Yeah not a String and
   Bool
2. This will typecheck
3. This will typecheck
4. No it won't typecheck because Papu is not an instance of Ord

## Match the types

1.  No you can't becuase 1 cannot be anything.
2.  No you can't becuase 1.0 cannot be any Num.
3.  Yes
4.  Yes
5.  Yes
6.  Yes
7.  No, sigmund would be returning an Int, not the same type as the argument
    (which could be anything).
8.  No, sigmund would be returning an Int, not the same type as the argument
    (which could be any instance of Num).
9.  Yes
10. Yes
11. No, mySort requires a string and won't work with any Ord.

## Type-Kwon-Do

1. chk f x y = f x == y
2. arith f i x = if i > 0 then f x else negate $ f x


