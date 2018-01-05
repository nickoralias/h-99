dupli :: [a] -> [a]
dupli xs = concatMap (replicate 2) xs
