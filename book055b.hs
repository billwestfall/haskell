{- run as

Prelude> :l book055b.hs
[1 of 1] Compiling Main             ( book055b.hs, interpreted )
Ok, modules loaded: Main.
*Main> take 5 (repeat 3)
[3,3,3,3,3]
*Main> take 7 (repeat 4)
[4,4,4,4,4,4,4]
*Main> repeat 4
[4,4,4,4,4,4,4,4,4,4,4,4,4, etc.

-}

repeat' :: a -> [a]
repeat' x = x:repeat' x
