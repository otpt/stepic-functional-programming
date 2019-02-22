module Module3.Task6 where

groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems xs = let
    helper (x : xs) (y : ys) = if x == y then helper (x : x : xs) ys else (x : xs) : helper [y] ys
    helper xs [] = [xs]
  in helper [head xs] $ tail xs