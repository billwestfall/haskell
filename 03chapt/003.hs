{-
MacBook-Air:03chapt billw$ ghci 003.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 003.hs, interpreted )
Ok, modules loaded: Main.
*Main> removeNonUppercase "AbCdEfGhIj"
"ACEGI"
*Main> removeNonUppercase "zYxWvUtS"
"YWUS"
*Main> 
-}

removeNonUppercase :: [Char] -> [Char]  
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']] 
