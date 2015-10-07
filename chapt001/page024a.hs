{-
*Main> :l page024a.hs
[1 of 1] Compiling Main             ( page024a.hs, interpreted )
Ok, modules loaded: Main.
*Main> safediv 3 2
1.5
*Main> safediv 3 0
1000.0
*Main>
-}


safediv m 0    = 1000
safediv m n     = m/n
