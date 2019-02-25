module Module3.Task21 where

meanList :: [Double] -> Double
meanList = (\(s,n) -> s / n) . foldr (\x (s,n) -> (s + x, n + 1)) (0, 0)
