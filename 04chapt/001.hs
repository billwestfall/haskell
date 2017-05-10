{-
MacBook-Air:04chapt billw$ ghci 001.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 001.hs, interpreted )
Ok, modules loaded: Main.
*Main> lucky 8
"Sorry, you're out of luck, pal!"
*Main> lucky 3
"Sorry, you're out of luck, pal!"
*Main> lucky 7
"LUCKY NUMBER SEVEN!"
*Main>
-}

lucky :: (Integral a) => a -> String  
lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky x = "Sorry, you're out of luck, pal!"
