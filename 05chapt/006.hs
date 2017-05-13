{-
MacBook-Air:05chapt billw$ ghci 006.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 006.hs, interpreted )
Ok, modules loaded: Main.
*Main> zip [7,8,9] [8,9,10]
[(7,8),(8,9),(9,10)]
*Main> zip [2,3,4] [2,3,5]
[(2,2),(3,3),(4,5)]
-}

zip' :: [a] -> [b] -> [(a,b)]  
zip' _ [] = []  
zip' [] _ = []  
zip' (x:xs) (y:ys) = (x,y):zip' xs ys
