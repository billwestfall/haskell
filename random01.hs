{- compile as ghc -o random01 random01.hs and then run as

MacBook-Air:haskell billw$ ./random01
gpasnyegltfouctvfzcf
MacBook-Air:haskell billw$ ./random01
jcqjnelsnkqwkqkayxov
MacBook-Air:haskell billw$ ./random01 
lyzurzkrfuchwmfgfflu

-}

import System.Random

main = do
    gen <- getStdGen
    putStr $ take 20 (randomRs ('a','z') gen)
