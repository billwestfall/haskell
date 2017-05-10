{-
MacBook-Air:04chapt billw$ ghci 002.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 002.hs, interpreted )
Ok, modules loaded: Main.
*Main> sayMe 4
"Four!"
*Main> sayMe 9
"Not between 1 and 5"
*Main> sayMe 3
"Three!"
-}

sayMe :: (Integral a) => a -> String 
sayMe 1 = "One!"  
sayMe 2 = "Two!"  
sayMe 3 = "Three!"  
sayMe 4 = "Four!"  
sayMe 5 = "Five!"  
sayMe x = "Not between 1 and 5"
