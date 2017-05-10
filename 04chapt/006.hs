{-
MacBook-Air:04chapt billw$ ghci 006.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 006.hs, interpreted )
Ok, modules loaded: Main.
*Main> first (3, 2, 1)
3
*Main> first (7, 9, 8)
7
*Main>
-}

first :: (a, b, c) -> a  
first (x, _, _) = x
