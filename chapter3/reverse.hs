module Reverse where

rvrs :: String -> String
rvrs x = concat [a, s, b, s, c]
  where a = drop 9 x
        b = take 2 $ drop 12 x
        c = take 5 x
        s = " "

main :: IO ()
main = print (rvrs "Curry is awesome")
