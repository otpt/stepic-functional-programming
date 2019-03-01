module Module4.Task8 where

-- data Result = Fail | Success

-- doSomeWork :: SomeData -> (Result,Int)


data Result' = Success' | Fail' Int

instance Show Result' where
    show Success' = "Success"
    show (Fail' a) = "Fail: " ++ show a

doSomeWork' :: SomeData -> Result'
doSomeWork' = (\(result, int) -> case result of {Fail -> Fail' int; _ -> Success'}) . doSomeWork