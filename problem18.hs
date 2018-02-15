slice :: [a] -> Int -> Int -> [a]
slice xs i k = take (k-i+1) (drop (i-1) xs)
