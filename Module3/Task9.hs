module Module3.Task9 where

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = let
    lessHead = filter (< x) xs
    moreEqualHead = filter (>= x) xs
  in qsort lessHead ++ x : qsort moreEqualHead