data Nat = Zero | Succ Nat deriving (Eq, Show)

natToInteger :: Nat -> Integer
natToInteger Zero = 0
natToInteger (Succ x) = 1 + natToInteger x

integerToNat :: Integer -> Maybe Nat
integerToNat i
    | i < 0 = Nothing
    | i == 0 = Just Zero
    | otherwise = case integerToNat (i - 1) of
        Just n -> Just $ Succ n
        Nothing -> Nothing
--  | otherwise = Succ <$> integerToNat (i - 1)
