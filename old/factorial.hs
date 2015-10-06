{- from http://learnyouahaskell.com/types-and-typeclasses run as

MacBook-Air:haskell billw$ ghci
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
Prelude> :l factorial.hs
[1 of 1] Compiling Main             ( factorial.hs, interpreted )
Ok, modules loaded: Main.
*Main> factorial 2
2
*Main> factorial 3
6
*Main> factorial 8
40320

-}

factorial :: Integer -> Integer
factorial n = product [1..n]
