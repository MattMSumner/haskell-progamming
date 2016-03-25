firstLine :: String -> [String]
firstLine x = [takeWhile (\x -> x /= '\n') x]

remainingLines :: String -> String
remainingLines x = dropWhile (\x -> x /= '\n') x

allLines :: String -> [String]
allLines "" = []
allLines ('\n':xs) = (firstLine xs) ++ allLines (remainingLines xs)
allLines x = (firstLine x) ++ allLines (remainingLines x)
