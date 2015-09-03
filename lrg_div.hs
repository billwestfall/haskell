{- from http://learnyouahaskell.com/higher-order-functions#maps-and-filters run as

MacBook-Air:haskell billw$ ghci
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
Prelude> :l lrg_div.hs
[1 of 1] Compiling Main             ( lrg_div.hs, interpreted )
Ok, modules loaded: Main.
*Main> largestDivisible
99554

-}


largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..])
    where p x = x `mod` 3829 == 0
