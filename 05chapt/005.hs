{-
MacBook-Air:05chapt billw$ ghci 005.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 005.hs, interpreted )
Ok, modules loaded: Main.
*Main> repeat 5
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,....
-}

repeat' :: a -> [a]  
repeat' x = x:repeat' x
