{- did not get this working here is the error
MacBook-Air:04chapt billw$ ghci 005.hs -XFlexibleContexts
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 005.hs, interpreted )
Ok, modules loaded: Main.
*Main> addVectors 5 6

<interactive>:2:1:
    No instance for (Num (a0, a0)) arising from a use of ‘it’
    In the first argument of ‘print’, namely ‘it’
    In a stmt of an interactive GHCi command: print it
*Main>
-}

{-# OPTIONS -XFlexibleContexts #-}

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors a b = (fst a + fst b, snd a + snd b)
