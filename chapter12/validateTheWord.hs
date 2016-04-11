newtype Word' = Word' String deriving (Eq, Show)

vowels = "aeiou"

countVowels :: String -> Int
countVowels = length . filter (flip elem "aeiou")

countConsonants :: String -> Int
countConsonants s = length s - countVowels s

mkWord :: String -> Maybe Word'
mkWord w
    | countVowels w > countConsonants w = Nothing
    | otherwise = Just $ Word' w
