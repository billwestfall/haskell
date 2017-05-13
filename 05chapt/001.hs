{-
MacBook-Air:05chapt billw$ ghci 001.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 001.hs, interpreted )
Ok, modules loaded: Main.
*Main> maximum'[2,4,5]
5
*Main> maximum'[11, 1, 2]
11
-}

maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs) = max x (maximum' xs)
