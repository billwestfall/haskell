{-
*Main> :l page056a.hs
[1 of 1] Compiling Main             ( page056a.hs, interpreted )
Ok, modules loaded: Main.
*Main> double 1
2
*Main> triple 2
6
*Main> twoxthreex 3
54
-}

double x = x + x
triple x = 3 * x
twoxthreex x = (double x) * (triple x)
