{- run as

MacBook-Air:haskell billw$ ghci
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
Prelude> :load book048.hs
[1 of 1] Compiling Main             ( book048.hs, interpreted )
Ok, modules loaded: Main.
*Main> :type Yellow
Yellow :: Roygbiv
*Main> Red == Yellow
False
*Main> Red == Red
True


-}

data Roygbiv  = Red
              | Orange
              | Yellow
              | Green
              | Blue
              | Indigo
              | Violet
                deriving (Eq, Show)
