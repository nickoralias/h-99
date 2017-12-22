compress :: (Eq a) => [a] -> [a]
compress xs = compress' xs []
    where
        compress' [] _  = []
        compress' [x] _ = [x]
        compress' (x:xs) acc
            | x == (head xs) = compress' xs acc
            | otherwise    = x : compress' xs acc 
