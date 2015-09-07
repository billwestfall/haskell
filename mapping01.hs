{- from http://www.slideshare.net/willkurt/introduction-to-functionalprogramming-fixed run as

Prelude> :l mapping01.hs
[1 of 1] Compiling Main             ( mapping01.hs, interpreted )
Ok, modules loaded: Main.
*Main> doubleAll [2,3,4,5]
[4,6,8,10]
*Main> squareAll [2,3,4,5]
[4,9,16,25]
*Main> squareAndAdd  [2,3,4,5]
[6,12,20,30]
*Main> upperCase "lambda"
"LAMBDA"

-}


import Data.Char

doubleAll xs = map (*2) xs
squareAll xs = map (^2) xs
squareAndAdd xs = map (\x->x*x+x) xs
upperCase s = map toUpper s
