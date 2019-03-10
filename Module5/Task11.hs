module Module5.Task11 where

nextPositionsN :: Board -> Int -> (Board -> Bool) -> [Board]
nextPositionsN b n pred | n < 0 = []
                        | n == 0 = filter pred [b]
                        | otherwise = do
    step <- nextPositions b
    nextPositionsN step (n - 1) pred
