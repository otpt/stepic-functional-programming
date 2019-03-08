module Module5.Task2 where

-- data Point3D a = Point3D a a a deriving Show

-- data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a)

-- instance Functor Point3D where
--     fmap f (Point3D a b c)= Point3D (f a) (f b) (f c)

instance Functor GeomPrimitive where
    fmap f (Point x) = Point (fmap f x)
    fmap f (LineSegment x y) = LineSegment (fmap f x) (fmap f y)
