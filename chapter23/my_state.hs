module MyState where

newtype Moi s a =
    Moi { runMoi :: s -> (a, s) }

instance Functor (Moi s) where
 -- fmap :: (a -> b) -> Moi s a -> Moi s b
    fmap f (Moi g) = Moi $ (sweet f) . g
        where sweet f (a, b) = (f a, b)

instance Applicative (Moi s) where
 -- pure :: a -> Moi s a
    pure a = Moi $ \s -> (a, s)

 -- (<*>) :: Moi s (a -> b)
 --     -> Moi s a
 --     -> Moi s b
    (Moi f) <*> (Moi g) = Moi $ \s ->
        let (a, s') = g s
            (fab, _) = f s
            b = fab a
        in (b, s')

instance Monad (Moi s) where
    return = pure

 -- (>>=) :: Moi s a
 --       -> (a -> Moi s b)
 --       -> Moi s b
    (Moi f) >>= g = Moi $ \s -> let a = fst $ f s
                                    ms = runMoi $ g a
                                in ms s
 -- (>>) :: Moi s a
 --     -> Moi s b
 --     -> Moi s b
    Moi f >> Moi g = Moi $ \s -> let (_, s') = f s
                                     in g s'
