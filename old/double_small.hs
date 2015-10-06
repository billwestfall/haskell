{- from http://learnyouahaskell.com/starting-out#ready-set-go
run as
*Main> :l double_small.hs
[1 of 1] Compiling Main             ( double_small.hs, interpreted )
Ok, modules loaded: Main.
*Main> doubleSmallNumber 31
62
*Main> doubleSmallNumber 101
101
-}

doubleSmallNumber x = if x > 100
                        then x
                        else x*2
