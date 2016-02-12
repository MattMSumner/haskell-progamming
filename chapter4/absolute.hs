module Absolute where
myAbs :: Integer -> Integer
myAbs x = if x < 0
  then negate x
  else x
