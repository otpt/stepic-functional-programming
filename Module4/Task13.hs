module Module4.Task13 where

data Person = Person { firstName :: String, lastName :: String, age :: Int }

abbrFirstName :: Person -> Person
abbrFirstName p@Person{ firstName = (x : _ : _)} = p { firstName = [x, '.']}
abbrFirstName p = p
