module Module5.Task12 where

pythagoreanTriple :: Int -> [(Int, Int, Int)]
pythagoreanTriple x = do
    if x >= 0 then "1" else []
    a <- [1..x]
    b <- [1..x]
    c <- [1..x]
    if (a ^ 2 + b ^ 2 == c ^ 2) && a < b then "1" else []
    return (a, b, c)
