module Module2.Task5 where

class Printable p where
    toString :: p -> String

instance Printable Bool where
    toString True = "true"
    toString False = "false"

instance Printable () where
    toString () = "unit type"
