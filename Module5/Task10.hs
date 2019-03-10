module Module5.Task10 where

import Data.Char(isDigit, digitToInt)

data Token = Number Int | Plus | Minus | LeftBrace | RightBrace     
     deriving (Eq, Show)

asToken :: String -> Maybe Token
asToken "+" = Just Plus
asToken "-" = Just Minus
asToken "(" = Just LeftBrace
asToken ")" = Just RightBrace
asToken s = getDigit 0 s where 
    getDigit acc [] = Just $ Number acc
    getDigit acc (x : xs) | isDigit x = getDigit (10 * acc + digitToInt x) xs
                          | otherwise = Nothing


tokenize :: String -> Maybe [Token]
tokenize input = getToken [] (words input) where
    getToken ts (x : xs) = do {
        t <- asToken x;
        getToken (t:ts) xs
    }
    getToken ts [] = Just $ reverse ts
