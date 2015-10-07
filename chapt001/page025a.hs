{-
*Main> :l page025a.hs
[1 of 1] Compiling Main             ( page025a.hs, interpreted )
Ok, modules loaded: Main.
*Main> replicate 3 5
[5,5,5]
-}

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0    = []
    | otherwise = x:replicate' (n-1) x
