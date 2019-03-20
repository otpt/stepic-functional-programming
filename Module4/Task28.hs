module Module4.Task28 where

import Prelude hiding (lookup)
import qualified Data.List as L

class MapLike m where
    empty :: m k v
    lookup :: Ord k => k -> m k v -> Maybe v
    insert :: Ord k => k -> v -> m k v -> m k v
    delete :: Ord k => k -> m k v -> m k v
    fromList :: Ord k => [(k,v)] -> m k v
    fromList [] = empty
    fromList ((k,v):xs) = insert k v (fromList xs)

newtype ListMap k v = ListMap { getListMap :: [(k,v)] }
    deriving (Eq,Show)
    
instance MapLike ListMap where
    empty = ListMap { getListMap = []}
    
    lookup _ (ListMap []) = Nothing
    lookup k (ListMap ((key, value) : xs)) = if k == key then Just value else lookup k (ListMap xs)

    insert k v (ListMap xs) = ListMap $ update xs where
        update [] = [(k, v)]
        update ((key, value) : xs) = if k == key then (k, v) : xs else (key, value) : update xs
    
    delete k (ListMap xs) = ListMap $ remove xs where
        remove [] = []
        remove ((key, value) : xs) = if k == key then xs else (key, value) : remove xs
