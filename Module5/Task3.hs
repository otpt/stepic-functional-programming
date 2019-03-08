module Module5.Task3 where

-- data Tree a = Leaf (Maybe a) | Branch (Tree a) (Maybe a) (Tree a) deriving Show

instance Functor Tree where
    fmap _ (Leaf Nothing) = Leaf Nothing
    fmap f (Leaf (Just x)) = Leaf (Just (f x))
    fmap f (Branch l x r) = Branch (fmap f l) (fmap f x) (fmap f r)