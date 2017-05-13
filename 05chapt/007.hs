{-
MacBook-Air:05chapt billw$ ghci 007.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 007.hs, interpreted )
Ok, modules loaded: Main.
*Main> elem 5 [5,6,7]
True
*Main> elem 4 [5,6,7]
False
-}

elem' :: (Eq a) => a -> [a] -> Bool  
elem' a [] = False  
elem' a (x:xs)  
    | a == x    = True  
    | otherwise = a `elem'` xs
