{- from http://learnyouahaskell.com/starting-out#ready-set-go
run as
Prelude> :l list_more.hs
[1 of 1] Compiling Main             ( list_more.hs, interpreted )
Ok, modules loaded: Main.
*Main> listLen 1 10
10
*Main> listNull 1 10
False
*Main> listRev 1 10
[10,9,8,7,6,5,4,3,2,1]
*Main> listTake 1 10
[1]
*Main> listDrop 1 10
[2,3,4,5,6,7,8,9,10]
*Main> listMax 1 10
10
*Main> listMin 1 10
1
*Main> listSum 1 10
55
*Main> listProd 1 10
3628800
*Main> 
-}

listElem y z = [y..z]
listLen y z = length [y..z]
listNull y z = null [y..z]
listRev y z = reverse [y..z]
listTake y z = take y [y..z]
listDrop y z = drop y [y..z]
listMax y z = maximum [y..z]
listMin y z = minimum [y..z]
listSum y z = sum [y..z]
listProd y z = product [y..z]
