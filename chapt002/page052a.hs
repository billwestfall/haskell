{-
Prelude> :l page052a.hs
[1 of 1] Compiling Main             ( page052a.hs, interpreted )
Ok, modules loaded: Main.
*Main> minpair 3 6
3
*Main> minpair 10 4
4
-}

minpair a b = if a < b then a else b
