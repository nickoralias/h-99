import Data.List (nub)
import System.Random (randomRs, newStdGen)

diff_select :: Int -> Int -> IO [Int]
diff_select _ 0 = return []
diff_select n m
    | m < n     = error "first argument must be less than the second"
    | otherwise = take n . nub . randomRs (1, m) <$> newStdGen
