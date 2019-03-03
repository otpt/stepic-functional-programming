module Module4.Task23 where

data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height (Leaf _) = 0
height (Node left right) = 1 + max (height left) (height right)

size :: Tree a -> Int
size (Leaf _) = 1
size (Node left right) = 1 + size left +  size right
