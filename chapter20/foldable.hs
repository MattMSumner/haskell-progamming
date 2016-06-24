import Data.Monoid

data Constant c a = C c

instance Foldable (Constant c) where
 -- foldMap :: (Foldable t, Monoid m) => (a -> m) -> t a -> m
    foldMap f (C c) = mempty

data Three a b c = Three a b c

instance Foldable (Three a b) where
 -- foldMap :: (Foldable t, Monoid m) => (c -> m) -> t c -> m
    foldMap f (Three a b c)= f c

data Three' a b = Three' a b b

instance Foldable (Three' a) where
 -- foldMap :: (Foldable t, Monoid m) => (c -> m) -> t c -> m
    foldMap f (Three' a b b') = f b <> f b'
