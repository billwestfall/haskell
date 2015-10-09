{-
*Main> :l page061b.hs
[1 of 1] Compiling Main             ( page061b.hs, interpreted )
Ok, modules loaded: Main.
*Main> least 3 1
1
*Main> least 7 10
7
-}

least p n = if p < n then p else n
