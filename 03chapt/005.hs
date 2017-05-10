{-
MacBook-Air:03chapt billw$ ghci 005.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 005.hs, interpreted )
Ok, modules loaded: Main.
*Main> circumference 3
18.849556
*Main> circumference 5
31.415928
*Main>
-}

circumference :: Float -> Float  
circumference r = 2 * pi * r
