module WordNumber where

import Data.List (intercalate)

digitToWord :: Int -> String
digitToWord 0 = "zero"
digitToWord 1 = "one"
digitToWord 2 = "two"
digitToWord 3 = "three"
digitToWord 4 = "four"
digitToWord 5 = "five"
digitToWord 6 = "six"
digitToWord 7 = "seven"
digitToWord 8 = "eight"
digitToWord 9 = "nine"
digitToWord _ = ""

digits :: Int -> [Int]
digits n
  | n < 10 = [n]
  | otherwise = digits (n `div` 10) ++ [n `rem` 10]

wordNumber :: Int -> String
wordNumber = intercalate "-" . map digitToWord . digits
