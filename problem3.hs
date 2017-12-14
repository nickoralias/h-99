elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) y = elementAt xs (y-1)
elementAt _ _ = error "Invalid input"
