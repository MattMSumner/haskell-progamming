firstWord :: String -> [String]
firstWord x = [takeWhile (\x -> x /= ' ') x]

remainingWords :: String -> String
remainingWords x = dropWhile (\x -> x /= ' ') x

allWords :: String -> [String]
allWords "" = []
allWords (' ':xs) = (firstWord xs) ++ allWords (remainingWords xs)
allWords x = (firstWord x) ++ allWords (remainingWords x)
