module FunctionWithLet where

printInc n = let plusTwo = n + 2
             in print plusTwo

printInc' n =
  (\plusTwo -> print plusTwo) (n + 2)
