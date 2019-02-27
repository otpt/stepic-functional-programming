module Module2.Task6 where

--class Printable p where
--    toString :: p -> String

--instance Printable Bool where
--    toString True = "true"
--    toString False = "false"

--instance Printable () where
--    toString () = "unit type"

instance (Printable a, Printable b) => Printable (a, b) where
    toString (a, b) = "(" ++ toString a ++ "," ++ toString b ++ ")"
