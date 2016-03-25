firstGroup :: String -> Char -> [String]
firstGroup xs y = [takeWhile (\x -> x /= y) xs]

remainingGroups :: String -> Char -> String
remainingGroups x y
  | remainer == "" = ""
  | otherwise = tail remainer
    where remainer = dropWhile (\x -> x /= y) x

allGroups :: String -> Char -> [String]
allGroups "" _ = []
allGroups x y = (firstGroup x y) ++ allGroups (remainingGroups x y) y

allWords = flip allGroups ' '
allLines = flip allGroups '\n'
