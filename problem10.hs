encode :: (Eq a) => [a] -> [(Integer, a)]
encode = foldr encode' []
    where
        encode' x [] = [(1, x)]
        encode' x (y:ys)
            | x == (snd y) = ((fst y) + 1, snd y):ys
            | otherwise  = (1, x):y:ys
