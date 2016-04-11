import Data.Maybe

notThe :: String -> Maybe String
notThe "the" = Nothing
notThe s = Just s

aNothing :: Maybe String -> String
aNothing Nothing = "a"
aNothing (Just s) = s

replaceThe' :: String -> String
replaceThe' = unwords . map (aNothing . notThe) . words

replaceThe :: String -> String
replaceThe "" = ""
replaceThe ss = translatedFirstWord ++ " " ++ replaceThe remainingWords
            where translatedFirstWord = aNothing $ notThe $ head $ words ss
                  remainingWords = unwords $ tail $ words ss

firstWordIsThe :: String -> Bool
firstWordIsThe ss = isNothing $ (notThe . head . words) ss

secondWordStartsWithVowel :: String -> Bool
secondWordStartsWithVowel = flip elem "aeiou" . head . head . tail . words

countTheBeforeVowel :: String -> Integer
countTheBeforeVowel ss
    | length (words ss) < 2 = 0
    | (firstWordIsThe ss) && (secondWordStartsWithVowel ss) = 1 + countTheBeforeVowel ((unwords . tail . words) ss)
    | otherwise = 0 + countTheBeforeVowel ((unwords . tail . words) ss)

countVowels :: String -> Integer
countVowels "" = 0
countVowels (s:ss)
    | elem s "aeiou" = 1 + countVowels ss
    | otherwise = 0 + countVowels ss
