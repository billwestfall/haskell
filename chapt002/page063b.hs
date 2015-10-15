{-
[1 of 1] Compiling Main             ( page063b.hs, interpreted )
Ok, modules loaded: Main.
*Main> lowhigh 4 5
4
*Main> lowhigh 5 5
10
*Main> lowhigh 6 5
5
-}



lowhigh x y
  | x < y = x
  | x > y = y
  | otherwise = x+y
