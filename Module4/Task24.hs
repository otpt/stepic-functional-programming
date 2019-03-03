module Module4.Task24 where

data Tree a = Leaf a | Node (Tree a) (Tree a)

avg :: Tree Int -> Int
avg t =
    let (c,s) = go t
    in s `div` c
  where
    go :: Tree Int -> (Int,Int)
    go (Leaf value) = (1, value)
    go (Node left right) = (\(x1, y1) (x2, y2) -> (x1 + x2, y1 + y2)) (go left) (go right)
