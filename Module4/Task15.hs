module Module4.Task15 where

data Coord a = Coord a a

getCenter :: Double -> Coord Int -> Coord Double
getCenter w (Coord x y) = Coord (fromIntegral x * w + w / 2) (fromIntegral y * w + w / 2)

getCell :: Double -> Coord Double -> Coord Int
getCell w (Coord x y) = Coord (floor (x / w)) (floor (y / w))
