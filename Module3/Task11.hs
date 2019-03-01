module Module3.Task11 where

perms :: [a] -> [[a]]
perms [] = [[]]
perms [x] = [[x]]
perms (x : xs) = concatMap (insert [] x) (perms xs)

insert ls x [] = [ls ++ [x]]
insert ls x rhs@(r : rs) = (ls ++ [x] ++ rhs) : insert (ls ++ [r]) x rs
