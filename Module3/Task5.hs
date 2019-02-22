module Module3.Task5 where

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 [] [] [] = []
sum3 xs ys zs = let 
    sums = sum3 (tailEmpty xs) (tailEmpty ys) (tailEmpty zs)
    headNum [] = 0
    headNum (x : xs) = x
    tailEmpty [] = []
    tailEmpty (x : xs) = xs
  in (headNum xs + headNum ys + headNum zs) : sums

