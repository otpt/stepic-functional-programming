module Module5.Task5 where

--data Log a = Log [String] a

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg = flog where flog x = Log [msg] (f x)

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x f g = Log (ms : [ns]) gfx where 
    Log [ms] fx  = f x
    Log [ns] gfx = g fx
