getLeft :: Either a b -> [a] -> [a]
getLeft (Left x) xs = x : xs
getLeft (Right _) xs = xs

lefts' :: [Either a b] -> [a]
lefts' xs = foldr getLeft [] xs

getRight :: Either a b -> [b] -> [b]
getRight (Right x) xs = x : xs
getRight (Left _) xs = xs

rights' :: [Either a b] -> [b]
rights' xs = foldr getRight [] xs

partitionEithers' :: [Either a b] -> ([a], [b])
partitionEithers' xs = (lefts' xs, rights' xs)

eitherMaybe' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe' f (Left _) = Nothing
eitherMaybe' f (Right x) = Just $ f x

either' :: (a -> c) -> (b -> c) -> Either a b -> c
either' f _ (Left x) = f x
either' _ f (Right x) = f x

eitherMaybe'' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe'' f x = either' (\x -> Nothing) (Just . f) x
