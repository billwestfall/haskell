{-
MacBook-Air:03chapt billw$ ghci 002.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 002.hs, interpreted )
Ok, modules loaded: Main.
*Main> addThree 5 6 7
18
*Main> 
-}

addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z
