data Encoding a = Single a | Multiple Int a 
  deriving Show

incr :: Encoding a -> Encoding a
incr (Single e)         = Multiple 2 e
incr (Multiple count e) = Multiple (count + 1) e

encodeModified :: (Eq a) => [a] -> [Encoding a]
encodeModified = foldr encode' []
  where
    encode' x [] = [(Single x)]
    encode' x (y@(Single e):ys)
      | x == e = (incr y):ys
    encode' x (y@(Multiple count e):ys)
      | x == e = (incr y):ys
    encode' x ys = (Single x):ys
