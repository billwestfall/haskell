{-
MacBook-Air:04chapt billw$ ghci 003.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 003.hs, interpreted )
Ok, modules loaded: Main.
*Main> factorial 3
6
*Main> factorial 9
362880
*Main> factorial 0
1
*Main>
-}

factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1)
