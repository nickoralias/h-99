data Encoding a = Single a | Multiple Int a 
  deriving Show

decodeModified :: [Encoding a] -> [a]
decodeModified = concatMap decode
  where
    decode (Single a)         = [a]
    decode (Multiple count a) = take count (repeat a)
