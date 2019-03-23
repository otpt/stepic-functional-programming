module Module5.Task14 where

import Data.List(isInfixOf)
import System.Directory

main' :: IO ()
main' = do
    putStr "Substring: "
    subs <- getLine
    if null subs then 
        putStrLn "Canceled" 
    else do
        files <- getDirectoryContents "."
        let forRemove = filter (isInfixOf subs) files
        mapM_ removePrint forRemove where
            removePrint filename = do
               putStrLn $ "Removing file: " ++ filename
               removeFile filename
