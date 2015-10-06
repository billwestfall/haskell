{-} run as

MacBook-Air:haskell billw$ ghci
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
Prelude> :load rms.hs
[1 of 1] Compiling Main             ( rms.hs, interpreted )
Ok, modules loaded: Main.
*Main> rms 8 9
8.514693182963201

-}

rms x y          =  sqrt ((x^2 + y^2) * 0.5)
