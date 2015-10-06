{- from http://learnyouahaskell.com/starting-out#ready-set-go
run as
*Main> :l list_comp.hs
[1 of 1] Compiling Main             ( list_comp.hs, interpreted )
Ok, modules loaded: Main.
*Main> listComp 1 10
[2,4,6,8,10,12,14,16,18,20]
-}

listComp y z = [x*2 | x <- [y..z]]
