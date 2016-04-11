myIterate :: (a -> a) -> a -> [a]
myIterate f x = x : myIterate f (f x)

myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
myUnfoldr f b = fst pair ++ myUnfoldr f (snd pair)
          where pair = something (f b) [] b
                something :: Maybe (a, b) -> [a] -> b -> ([a], b)
                something Nothing xs y = (xs, y)
                something (Just (x, y)) xs _ = (x : xs, y)

betterIterate :: (a -> a) -> a -> [a]
betterIterate f x = myUnfoldr (\x -> Just (x, f x)) x
