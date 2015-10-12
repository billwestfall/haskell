{-
Shuffle cards 1-52 and deal poker hand
*Main> :l rand01a.hs
[1 of 1] Compiling Main             ( rand01a.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
[4,49,13,14,50]
*Main> main
[13,12,49,49,3]
-}



import System.Random

main = do
    g <- newStdGen
    print $ take 5 (randomRs (1, 52) g :: [Int])
