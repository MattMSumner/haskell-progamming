module Main where

import Test.QuickCheck
import Test.QuickCheck.Checkers
import Test.QuickCheck.Classes
import Data.Monoid

type TI = []

------------
-- Identity
------------

newtype Identity a = Identity a
    deriving (Eq, Ord, Show)

instance Functor Identity where
    fmap f (Identity a) = Identity $ f a

instance Applicative Identity where
    pure                      = Identity
    Identity a <*> Identity b = Identity (a b)

instance Foldable Identity where
    foldMap f (Identity y) = f y

instance Traversable Identity where
    traverse f (Identity y) = Identity <$> f y

-- Stuff needed for quickcheck

instance Eq a => EqProp (Identity a) where
    (=-=) = eq

instance Arbitrary a => Arbitrary (Identity a) where
    arbitrary = genId

genId :: Arbitrary a => Gen (Identity a)
genId = do
    x <- arbitrary
    return $ Identity x

------------
-- Constant
------------

newtype Constant a b = Constant { getConstant :: a }
    deriving (Eq, Show)

instance Functor (Constant a) where
    fmap _ (Constant a) = Constant a

instance Monoid a => Applicative (Constant a) where
    pure _ = Constant mempty
    Constant a1 <*> Constant a2 = Constant (a1 <> a2)

instance Foldable (Constant a) where
    foldMap _ _ = mempty

instance Monoid a => Traversable (Constant a) where
    traverse _ (Constant x) = Constant <$> pure x

-- Stuff needed for quickcheck

instance (Eq a, Eq b) => EqProp (Constant a b) where
    (Constant x) =-= (Constant x') = x `eq` x'

instance Arbitrary a => Arbitrary (Constant a b) where
    arbitrary = genConst

genConst :: Arbitrary a => Gen (Constant a b)
genConst = do
    a <- arbitrary
    return $ Constant a

------------
-- Maybe
------------

data Optional a = Nada | Yep a
    deriving (Eq, Show)

instance Functor Optional where
    fmap _ Nada = Nada
    fmap f (Yep a) = Yep $ f a

instance Applicative Optional where
    pure a = Yep a
    Nada <*> _ = Nada
    _ <*> Nada = Nada
    (Yep a) <*> (Yep b) = Yep (a b)

instance Foldable Optional where
    foldMap _ Nada = mempty
    foldMap f (Yep a) = f a

instance Traversable Optional where
    traverse f Nada = pure Nada
    traverse f (Yep a) = Yep <$> f a

-- Stuff needed for quickcheck

instance Eq a => EqProp (Optional a) where
    (=-=) = eq

instance Arbitrary a => Arbitrary (Optional a) where
    arbitrary = frequency [ (1, return Nada), (2, genYep) ]

genYep :: Arbitrary a => Gen (Optional a)
genYep = do
    x <- arbitrary
    return $ Yep x

------------
-- List
------------

data List a = Nil | Cons a (List a)
    deriving (Eq, Show)

instance Monoid (List a) where
    mempty                 = Nil
    mappend Nil as         = as
    mappend as Nil         = as
    mappend (Cons a as) bs = Cons a $ as <> bs

instance Functor List where
    fmap _ Nil = Nil
    fmap f (Cons a as) = Cons (f a) $ fmap f as

instance Applicative List where
    pure a = Cons a Nil
    Nil <*> _ = Nil
    _ <*> Nil = Nil
    (Cons f fs) <*> (Cons a as) = Cons (f a) $ (fmap f as) <> (fs <*> (Cons a as))

instance Foldable List where
    foldMap _ Nil = mempty
    foldMap f (Cons a as) = f a <> foldMap f as

instance Traversable List where
    traverse f Nil = pure Nil
    traverse f (Cons a as) = (Cons <$> f a) <*> (traverse f as)

-- Stuff needed for quickcheck

instance Eq a => EqProp (List a) where
    (=-=) = eq

instance Arbitrary a => Arbitrary (List a) where
    arbitrary = frequency [ (1, return Nil), (2, genCons) ]

genCons :: Arbitrary a => Gen (List a)
genCons = do
    x <- arbitrary
    y <- arbitrary
    return $ Cons x y

------------
-- Three
------------

-- data Three a b c = Three a b c
--     deriving (Eq, Ord, Show)
--
-- instance Functor (Three a b) where
--     fmap f (Three a b c) = Three a b $ f c
--
-- instance Applicative (Three a b) where
--     pure a = Cons a Nil
--     Nil <*> _ = Nil
--     _ <*> Nil = Nil
--     (Cons f fs) <*> (Cons a as) = Cons (f a) $ (fmap f as) <> (fs <*> (Cons a as))

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

trigger      = undefined :: TI (Int, Int, [Int])
idTrigger    = undefined :: Identity (Int, Int, [Int])
constTrigger = undefined :: Constant String (Int, Int, [Int])
optTrigger   = undefined :: Optional (Int, Int, [Int])
listTrigger  = undefined :: List (Int, Int, [Int])

main = do
    putStr "\nList"
    quickBatch (traversable trigger)
    putStr "\nIdentity"
    quickBatch (traversable idTrigger)
    putStr "\nConstant"
    quickBatch (traversable constTrigger)
    putStr "\nOptional"
    quickBatch (traversable optTrigger)
    putStr "\nList"
    quickBatch (traversable listTrigger)
