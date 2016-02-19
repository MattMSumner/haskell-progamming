r :: [a] -> [a]
r [] = []
r (x:xs) = r xs ++ [x]
