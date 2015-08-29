{- from http://learnyouahaskell.com/starting-out#ready-set-go
run as
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
Prelude> :l double_both.hs
[1 of 1] Compiling Main             ( double_both.hs, interpreted )
Ok, modules loaded: Main.
*Main> doubleUs 3 2
10
*Main> doubleUs 8.2 9.05
34.5
-}

doubleUs x y = x*2 + y*2
