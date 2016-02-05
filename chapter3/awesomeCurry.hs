bang = (++ "!")
fifth = (!! 4)
drop9 = drop 9

argument = "Curry is awesome"

thirdLetter :: [Char] -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = argument !! x

rvrs :: String -> String
rvrs x = concat [a, s, b, s, c]
  where a = drop9 x
        b = take 2 $ drop 12 x
        c = take 5 x
        s = " "
