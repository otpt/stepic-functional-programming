module Module3.Task14 where

fibStream a b = a : fibStream b (a+b)

zipWith (\x y -> x + y) [0] (zipWith (\x y -> x + y) [1] [])