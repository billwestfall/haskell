{-
[1 of 1] Compiling Main             ( page062a.hs, interpreted )
Ok, modules loaded: Main.
*Main> lowhigh 4 5
"Too low"
*Main> lowhigh 5 4
"Too high"
*Main> lowhigh 5 5
-}



lowhigh x y
  | x <= y = "Too low"
  | otherwise = "Too high"
