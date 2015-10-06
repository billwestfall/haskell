{-
*Main> :l page022a.hs
[1 of 1] Compiling Main             ( page022a.hs, interpreted )
Ok, modules loaded: Main.
*Main> second 3 2
2
*Main> minpair 4 3
3
*Main> maxpair 4 5
5
*Main> minmaxpair 6 4
(4,6)
*Main> maxpair 3 4
4
-}


second x y                   =   y
minpair x y                  =   if x < y then x else y
maxpair x y                  =   if x > y then x else y
minmaxpair x y               =   if x < y then (x, y) else (y, x)
maxpairb anypair             =   second (minmaxpair anypair)
