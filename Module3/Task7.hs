module Module3.Task7 where

import Data.Char

readDigits :: String -> (String, String)
readDigits = span isDigit
