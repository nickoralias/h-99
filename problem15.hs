repli :: [a] -> Int -> [a]
repli xs count = concatMap (replicate count) xs
