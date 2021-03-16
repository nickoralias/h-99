import System.Random (randomRIO)

rnd_select :: [a] -> Int -> IO [a]
rnd_select _ 0 = return []
rnd_select [] _ = return []
rnd_select xs n = do
    randomNumber <- randomRIO (0, length xs -1)
    remainingChars <- rnd_select xs (n-1)
    return $ (xs !! randomNumber) : remainingChars
