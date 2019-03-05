module Module4.Task26 where

-- newtype Xor = Xor { getXor :: Bool }
--     deriving (Eq,Show)

-- instance Monoid Xor where
--     mempty = Xor False
--     mappend a b = Xor (a /= b)


newtype Xor = Xor { getXor :: Bool }
    deriving (Eq,Show)

instance Semigroup Xor where
    a <> b = Xor (a /= b)

instance Monoid Xor where
    mempty = Xor False
