import Control.Monad (forever)
import System.Exit (exitSuccess)
import Data.Char

palindrome :: IO ()
palindrome = forever $ do
  line <- getLine
  let line' = removePunctuation $ map toLower line
  case (line' == reverse line') of
    True -> putStrLn "It's a palindrome!"
    False -> putStrLn "Nope!"
  exitSuccess

removePunctuation :: String -> String
removePunctuation s = filter (flip elem ['a'..'z']) s
