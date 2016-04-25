module UsingQuickCheck where

half :: Double -> Double
half x = x / 2

halfIdentity :: Double -> Double
halfIdentity = (*2) . half

listOrdered :: (Ord a) => [a] -> Bool
listOrdered xs = snd $ foldr go (Nothing, True) xs
  where go _ status@(_, False) = status
        go y (Nothing, t) = (Just y, t)
        go y (Just x, _) = (Just y, x >= y)

plusAssociative :: (Eq a, Num a) => a -> a -> a -> Bool
plusAssociative x y z =
  x + (y + z) == (x + y) + z

plusCommutative :: (Eq a, Num a) => a -> a -> Bool
plusCommutative x y =
  x + y == y + x

multiAssociative :: (Eq a, Num a) => a -> a -> a -> Bool
multiAssociative x y z =
  x * (y * z) == (x * y) * z

multiCommutative :: (Eq a, Num a) => a -> a -> Bool
multiCommutative x y =
  x * y == y * x

