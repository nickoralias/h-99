import Data.List (nub)
import System.Random (randomRs, newStdGen)

rnd_permu :: [a] -> IO [a]
rnd_permu l = do
    gen <- newStdGen
    return $ map (l !!) . take (length l) . nub $ randomRs (0, length l - 1) gen
