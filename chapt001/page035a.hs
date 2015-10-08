{-
Prelude> :l page035a.hs
[1 of 1] Compiling Main             ( page035a.hs, interpreted )
Ok, modules loaded: Main.
*Main> posgcd 5 3
2
*Main> posgcd 4 9
5
*Main> posgcd 8 8
8
-}

posgcd m n
    | n > m         = n - m
    | m > n         = m - n
    | otherwise     = n
