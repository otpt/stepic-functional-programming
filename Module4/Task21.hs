module Module4.Task21 where

data List a = Nil | Cons a (List a)

fromList :: List a -> [a]
fromList Nil = []
fromList (Cons x xs) = x : fromList xs


toList :: [a] -> List a
toList [] = Nil
toList (x : xs) = Cons x $ toList xs
