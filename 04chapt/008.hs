{-
MacBook-Air:04chapt billw$ ghci 008.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 008.hs, interpreted )
Ok, modules loaded: Main.
*Main> third (5, 6, 7)
7
*Main> third (9, 8, 1)
1
-}

third :: (a, b, c) -> c  
third (_, _, z) = z
