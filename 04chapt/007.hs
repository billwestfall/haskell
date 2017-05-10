{-
MacBook-Air:04chapt billw$ ghci 007.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 007.hs, interpreted )
Ok, modules loaded: Main.
*Main> second (2, 3, 4)
3
*Main> second (9, 7, 8)
7
-}

second :: (a, b, c) -> b  
second (_, y, _) = y
