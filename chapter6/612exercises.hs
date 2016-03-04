data TisAnInteger =
  TisAn Integer
instance Eq TisAnInteger where
  (TisAn i) == (TisAn i') = i == i'

data TwoIntegers =
  Two Integer Integer
instance Eq TwoIntegers where
  (Two a b) == (Two a' b') = a == a' && b == b'

data StringOrInt =
    TisAnInt Int
  | TisAString String
instance Eq StringOrInt where
  (TisAnInt a) == (TisAnInt a') = a == a'
  (TisAString a) == (TisAString a') = a == a'
  _ == _ = False

data Pair a =
  Pair a a
instance Eq a => Eq (Pair a) where
  Pair a b == Pair a' b' = a == a' && b == b'

data Tuple a b =
  Tuple a b
instance (Eq a, Eq b) => Eq (Tuple a b) where
  Tuple a b == Tuple a' b' = a == a' && b == b'

data Which a =
    ThisOne a
  | ThatOne a
instance Eq a => Eq (Which a) where
  ThisOne a == ThisOne a' = a == a'
  ThatOne a == ThatOne a' = a == a'
  _ == _ = False

data EitherOr a b =
    Hello a
  | Goodbye b
instance (Eq a, Eq b) => Eq (EitherOr a b) where
  Hello a == Hello a' = a == a'
  Goodbye b == Goodbye b' = b == b'
  _ == _ = False
