pack :: (Eq a) => [a] -> [[a]]
pack = foldr pack' []
    where
        pack' x [] = [[x]]
        pack' x (y:ys)
            | x `elem` y = (x:y):ys
            | otherwise  = [x]:y:ys
