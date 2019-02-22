module Module3.Task4 where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = let 
    equal_reverse [] _ = True
    equal_reverse (x : xs) (y : ys) = x == y && equal_reverse xs ys
  in equal_reverse x $ reverse x