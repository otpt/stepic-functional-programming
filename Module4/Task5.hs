module Module4.Task5 where

-- data Result = Fail | Success
-- doSomeWork :: SomeData -> (Result,Int)	

processData :: SomeData -> String
processData = (\(result, int) -> case result of {Fail -> "Fail: " ++ show int; _ -> "Success"}) . doSomeWork