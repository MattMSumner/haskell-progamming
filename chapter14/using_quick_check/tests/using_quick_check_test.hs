module Main where

import Test.QuickCheck
import Test.QuickCheck.Modifiers
import Data.List (sort)
import UsingQuickCheck

prop_halfIdentity :: Property
prop_halfIdentity =
  forAll (arbitrary :: Gen Double)
  (\x -> halfIdentity x == x)

prop_ordered :: Property
prop_ordered =
  forAll (arbitrary :: Gen String)
  (\xs -> listOrdered $ sort xs)

prop_plusAssociative :: Property
prop_plusAssociative =
  forAll (arbitrary :: Gen (Int, Int, Int))
  (\(x, y, z) -> plusAssociative x y z)

prop_plusCommutative :: Property
prop_plusCommutative =
  forAll (arbitrary :: Gen (Int, Int))
  (\(x, y) -> plusCommutative x y)

prop_multiAssociative :: Property
prop_multiAssociative =
  forAll (arbitrary :: Gen (Int, Int, Int))
  (\(x, y, z) -> plusAssociative x y z)

prop_multiCommutative :: Property
prop_multiCommutative =
  forAll (arbitrary :: Gen (Int, Int))
  (\(x, y) -> plusCommutative x y)

prop_quotRem :: Property
prop_quotRem =
  forAll (arbitrary :: Gen (Int, NonZero Int))
  (\(x, y) -> (quot x (getNonZero y))*(getNonZero y) + (rem x (getNonZero y)) == x)

prop_divMod :: Property
prop_divMod =
  forAll (arbitrary :: Gen (Int, NonZero Int))
  (\(x, y) -> (div x (getNonZero y))*(getNonZero y) + (mod x (getNonZero y)) == x)

main :: IO ()
main = do
  quickCheck prop_halfIdentity
  quickCheck prop_ordered
  quickCheck prop_plusAssociative
  quickCheck prop_plusCommutative
  quickCheck prop_multiAssociative
  quickCheck prop_multiCommutative
  quickCheck prop_quotRem
  quickCheck prop_divMod
