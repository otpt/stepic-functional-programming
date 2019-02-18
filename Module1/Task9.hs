module Module1.Task9 where

fibonacci :: Integer -> Integer
fibonacci n = if n == 1 then 1 else helper 0 1 n
helper a b 0 = a
helper a b c = if c > 0 then helper b (a + b) (c - 1) else helper (b - a) a (c + 1)