{- from http://learnyouahaskell.com/modules#data-list
run as
Prelude> :l double_iter.hs
[1 of 1] Compiling Main             ( double_iter.hs, interpreted )
Ok, modules loaded: Main.
*Main> doubleIter 1
[1,2,4,8,16,32,64,128,256,512]
*Main> doubleIter 3
[3,6,12,24,48,96,192,384,768,1536]
-}

doubleIter x = take 10 $ iterate (*2) x
