module Module3.Task3 where

oddsOnly :: Integral a => [a] -> [a]
oddsOnly [] = []
oddsOnly (x : xs) = 
    let 
        oddsOnlyTail = oddsOnly xs
    in if odd x then x : oddsOnlyTail else oddsOnlyTail
