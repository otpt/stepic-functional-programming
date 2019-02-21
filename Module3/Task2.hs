module Module3.Task2 where

nTimes:: a -> Int -> [a]
nTimes el n = if n == 0 then [] else el : nTimes el (n - 1)

-- nTimes:: a -> Int -> [a]
-- nTimes el n  = 
--     let
--         add = (el : )
--         helper 0 = []
--         helper n = add $ helper $ n-1
--     in helper n