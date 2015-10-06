{-
*Main> :l page019a.hs
[1 of 1] Compiling Main             ( page019a.hs, interpreted )
Ok, modules loaded: Main.
*Main> double 3
6
*Main> treble 4
12
*Main> sixtimes 5
30
-}

double x = x+x
treble x = x*3
sixtimes x = double (treble x)
