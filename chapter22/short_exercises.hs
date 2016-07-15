import Data.Char

cap :: [Char] -> [Char]
cap xs = map toUpper xs

rev :: [Char] -> [Char]
rev xs = reverse xs

composed :: [Char] -> [Char]
composed = cap . rev

fmapped :: [Char] -> [Char]
fmapped = fmap rev cap

tupled :: [Char] -> ([Char], [Char])
tupled = (,) <$> rev <*> cap

monadic :: [Char] -> ([Char], [Char])
monadic = do
  a <- rev
  b <- cap
  return (a, b)

monadic' :: [Char] -> ([Char], [Char])
monadic' = rev >>= \ x ->
            cap >>= \ y ->
              return (x, y)
