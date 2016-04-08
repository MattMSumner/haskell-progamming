import Data.Char

cipher :: String -> String -> String
cipher ks ms = cycleMessageKeyword (cycle ks) ms

cycleMessageKeyword :: String -> String -> String
cycleMessageKeyword _ [] = []
cycleMessageKeyword ks (' ':ms) = ' ' : cipher ks ms
cycleMessageKeyword (k:ks) (m:ms) = encode m k : cipher ks ms

encode :: Char -> Char -> Char
encode m k = onset $ ((offset m) + (offset k)) `mod` 26

offset :: Char -> Int
offset c = ord c - alphaOrd

onset :: Int -> Char
onset i = chr $ i + alphaOrd

alphaOrd :: Int
alphaOrd = ord 'A'
