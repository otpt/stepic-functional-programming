module Module5.Task14 where

import Data.List(isInfixOf)
import System.Directory

main' :: IO ()
main' = do
    putStr "Substring: "
    subs <- getLine
    if (subs == []) then 
        putStrLn "Canceled" 
    else do
        files <- getDirectoryContents "."
        mapM_ (removePrint subs) files where
            removePrint subs filename = do
                if isInfixOf subs filename then do
                    putStrLn $ "Removing file: " ++ filename
                    removeFile filename
                else return ()
