isJust :: Maybe a -> Bool
isJust Nothing = False
isJust (Just _) = True

isNothing :: Maybe a -> Bool
isNothing Nothing = True
isNothing (Just _) = False

fromJust :: Maybe a -> a
fromJust (Just a) = a

mayybee :: b -> (a -> b) -> Maybe a -> b
mayybee x f m
    | isJust m = f (fromJust m)
    | otherwise = x

fromMaybe :: a -> Maybe a -> a
fromMaybe x (Just y) = y
fromMaybe x Nothing = x

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x:_) = Just x

maybeToList :: Maybe a -> [a]
maybeToList (Just a) = [a]
maybeToList Nothing = []

catMaybes :: [Maybe a] -> [a]
catMaybes = map fromJust . filter isJust

flipMaybe :: [Maybe a] -> Maybe [a]
flipMaybe xs
    | any isNothing xs = Nothing
    | otherwise = Just $ catMaybes xs
