module Module4.Task22 where

data Nat = Zero | Suc Nat deriving Show

fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1

add :: Nat -> Nat -> Nat
add Zero nat = nat
add (Suc n) nat = add n (Suc nat)

toNat :: Integer -> Nat
toNat 0 = Zero
toNat n = Suc $ toNat (n - 1)

mul :: Nat -> Nat -> Nat
mul a b = toNat(fromNat a * fromNat b)

fac :: Nat -> Nat
fac n  = toNat(fact 1 (fromNat n)) where 
    fact acc 0 = acc
    fact acc m = fact (acc * m) (m - 1)
