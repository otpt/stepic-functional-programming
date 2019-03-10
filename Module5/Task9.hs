module Module5.Task9 where

instance Functor SomeType where
    fmap f x = x >>= return . f
