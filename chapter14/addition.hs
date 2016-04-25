module Addition where

import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Addition" $ do
    it "1 + 1 is greater than 1" $ do
      (1 + 1) > 1 `shouldBe` True
    it "2 + 2 is equal to 4" $ do
      2 + 2 `shouldBe` 4
  describe "dividedBy" $ do
    it "15 divided by 3 is 5" $ do
      dividedBy 15 3 `shouldBe` (5, 0)
    it "22 divided by 5 is 4 remainder 2" $ do
      dividedBy 22 5 `shouldBe` (4, 2)
  describe "multiplyn" $ do
    it "2 times 10 should be 20" $ do
      multiplyn 2 10 `shouldBe` 20
    it "3 times 11 should be 33" $ do
      multiplyn 3 11 `shouldBe` 33

sayHello :: IO ()
sayHello = putStrLn "hello!"

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n   d count
         | n < d = (count, n)
         | otherwise = go (n - d) d (count + 1)

multiplyn :: (Eq a, Num a) => a -> a -> a
multiplyn 0 _ = 0
multiplyn _ 0 = 0
multiplyn x y = x + multiplyn x (y - 1)
