module Module5.Task8 where

--data Log a = Log [String] a

--instance Monad Log where
--    return = returnLog
--    (>>=) = bindLog

execLoggersList :: a -> [a -> Log a] -> Log a
execLoggersList x fs = execList fs (return x) where 
    execList [] x = x
    execList (f : fs) x = execList fs (x >>= f)
