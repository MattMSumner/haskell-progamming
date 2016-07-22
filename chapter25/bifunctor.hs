class Bifunctor p where
  {-# MINIMAL bimap | first, second #-}

  bimap :: (a -> b) -> (c -> d) -> p a c -> p b d
  bimap f g = first f . second g

  first :: (a -> b) -> p a c -> p b c
  first f = bimap f id

  second :: (b -> c) -> p a b -> p a c
  second = bimap id


data Deux a b = Deux a b deriving Show
instance Bifunctor Deux where
  bimap f g (Deux a b) = Deux (f a) (g b)

data Const a b = Const a deriving Show
instance Bifunctor Const where
  bimap f _ (Const x) = Const $ f x

data Drei a b c = Drei a b c deriving Show
instance Bifunctor (Drei a) where
  bimap f g (Drei x y z) = Drei x (f y) (g z)

data SuperDrei a b c = SuperDrei a b deriving Show
instance Bifunctor (SuperDrei a) where
  bimap f _ (SuperDrei x y) = SuperDrei x $ f y

data SemiDrei a b c = SemiDrei a deriving Show
instance Bifunctor (SemiDrei a) where
  bimap _ _ (SemiDrei x) = SemiDrei x

data Quadriceps a b c d = Quadzzz a b c d deriving Show
instance Bifunctor (Quadriceps a b) where
  bimap f g (Quadzzz w x y z) = Quadzzz w x (f y) (g z)

instance Bifunctor Either where
  bimap f _ (Left a) = Left (f a)
  bimap _ g (Right b) = Right (g b)
