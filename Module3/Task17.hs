module Module3.Task17 where

coins = [2, 3, 7]

change n = [ ans | x <- coins, x <= n, let ans = map (\xs -> x : xs) (change (n - x))]
 
--GHCi> change 7
--[[2,2,3],[2,3,2],[3,2,2],[7]]