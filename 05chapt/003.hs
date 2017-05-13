{-
MacBook-Air:05chapt billw$ ghci 003.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 003.hs, interpreted )
Ok, modules loaded: Main.
*Main> take' 3 [1,2,3]
[1,2,3]
*Main> take' 3 [1,2,3,4]
[1,2,3]
*Main> take' 3 [1,2,3,4,5]
[1,2,3]
*Main> take' 2 [5,4,3,2,1]
[5,4]
-}

take' :: (Num i, Ord i) => i -> [a] -> [a]  
take' n _  
    | n <= 0   = []  
take' _ []     = []  
take' n (x:xs) = x : take' (n-1) xs
