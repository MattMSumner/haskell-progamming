# 17.1 Short Exercise

1.
```hs
sum' :: (Foldable t, Num a) => t a -> a
sum' = getSum . foldMap Sum
```

2.
```hs
product' :: (Foldable t, Num a) => t a -> a
product' = getProduct . foldMap Product
```

3.
```hs
elem' :: (Foldable t, Eq a) => a -> t a -> Bool
elem' a as = getAny . foldMap Any $ (a ==) <$> as
```

4.
```hs
minimum' :: (Foldable t, Ord a) => t a -> Maybe a
minimum' = foldr mMin Nothing
    where
        mMin x Nothing = Just x
        mMin x (Just y) = Just $ min x y
```

5.
```hs
maximum' :: (Foldable t, Ord a) => t a -> Maybe a
maximum' = foldr mMin Nothing
    where
        mMin x Nothing = Just x
        mMin x (Just y) = Just $ max x y
```

6.
```hs
null' :: (Foldable t) => t a -> Bool
null' = foldr (\ _ _ -> False) True
```

7.
```hs
length' :: (Foldable t) => t a -> Int
length' = foldr (\ _ a -> a + 1) 0
```

8.
```hs
toList' :: (Foldable t) => t a -> [a]
toList' = foldr (\ a b -> a : b) []
```

9.
```hs
fold' :: (Foldable t, Monoid m) => t m -> m
fold' = foldMap id
```

10.
```hs
foldMap' :: (Foldable t, Monoid m) => (a -> m) -> t a -> m
foldMap' f = foldr (\a b -> f a <> b) mempty
```

# 20.6 Chapter Exercise
