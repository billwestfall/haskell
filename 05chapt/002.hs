{-
MacBook-Air:05chapt billw$ ghci 002.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 002.hs, interpreted )
Ok, modules loaded: Main.
*Main> replicate' 5 2
[2,2,2,2,2]
*Main> replicate' 2 5
[5,5]
-}

replicate' :: (Num i, Ord i) => i -> a -> [a]  
replicate' n x  
    | n <= 0    = []  
    | otherwise = x:replicate' (n-1) x
