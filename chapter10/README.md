# 10.5 Intermission: Exercises

1. c
2. (((1 * 1) * 2) * 3)
3. c
4. a
5.
  a. foldr (++) "" ["woot", "WOOT", "woot"]
  b. foldr max 'a' "fear is the little death"
  c. foldr (&&) True [False, True]
  d. Nope
  e. foldl (flip ((++) . show)) "" [1,2,3,4,5]
  f. foldr (flip const) 'a' [1..5]
  g. foldr (flip const) 0 "tacos"
  h. foldl const 0 "burritos"
  i. foldl const 'z' [1..5]

Note: when you need `foldl` you should instead use `foldl'` for strict
evaluation.

# 10.6 Intermission: Exercises

See [database](database.hs).

# 10.9 Scans Exercises
