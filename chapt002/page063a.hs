{-
[1 of 1] Compiling Main             ( page063a.hs, interpreted )
Ok, modules loaded: Main.
*Main> lowhigh 4 5
"Too low"
*Main> lowhigh 5 5
"Just right"
*Main> lowhigh 6 5
"Too high"
-}



lowhigh x y
  | x < y = "Too low"
  | x > y = "Too high"
  | otherwise = "Just right"
