{- from http://learnyouahaskell.com/modules#data-list
run as
*Main> :l al_num.hs
[1 of 1] Compiling Main             ( al_num.hs, interpreted )
Ok, modules loaded: Main.
*Main> alNum "tweet!#$$%"
False
*Main> alNum "tweet"
True
-}

import qualified Data.Map
import qualified Data.List
import qualified Data.Char

alNum x = Data.List.all Data.Char.isAlphaNum x
