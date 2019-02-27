module Module4.Task3 where

data Color = Red | Green | Blue

--instance Show Color where
--    show Red = "Red"
--    show Green = "Green"
--    show Blue = "Blue"

stringToColor :: String -> Color
stringToColor "Red" = Red
stringToColor "Green" = Green
stringToColor "Blue" = Blue
