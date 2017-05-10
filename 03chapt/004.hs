{-
MacBook-Air:03chapt billw$ ghci 004.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 004.hs, interpreted )
Ok, modules loaded: Main.
*Main> factorial 3
6
*Main> factorial 5
120
*Main>
-}

factorial :: Integer -> Integer  
factorial n = product [1..n] 
