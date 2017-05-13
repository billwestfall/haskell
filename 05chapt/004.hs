{-
MacBook-Air:05chapt billw$ ghci 004.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 004.hs, interpreted )
Ok, modules loaded: Main.
*Main> reverse [3,2,1]
[1,2,3]
*Main> reverse [7,10,4,8]
[8,4,10,7]
-}

reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]
