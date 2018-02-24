range :: Int -> Int -> [Int]
range from to = drop (from - 1) $ take to [1..]
