{- from http://learnyouahaskell.com/starting-out#ready-set-go
run as
MacBook-Air:haskell billw$ ghci
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
Prelude> :l double_ultra.hs
[1 of 1] Compiling Main             ( double_ultra.hs, interpreted )
Ok, modules loaded: Main.
*Main> doubleUs 3 2 + doubleMe 4
18
-}

doubleMe x = x + x
doubleUs x y = x*2 + y*2
