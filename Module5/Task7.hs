module Module5.Task7 where

--data Log a = Log [String] a

bindLog :: Log a -> (a -> Log b) -> Log b
bindLog (Log ms x) f = Log (ms ++ ns) y where (Log ns y) = f x
