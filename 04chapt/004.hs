{-
MacBook-Air:04chapt billw$ ghci 004.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 004.hs, interpreted )
Ok, modules loaded: Main.
*Main> charName 'c'
"Cecil"
*Main> charName 'a'
"Albert"
*Main>
-}

charName :: Char -> String  
charName 'a' = "Albert"  
charName 'b' = "Broseph"  
charName 'c' = "Cecil" 
