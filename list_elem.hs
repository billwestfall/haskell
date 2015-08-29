{- from http://learnyouahaskell.com/starting-out#ready-set-go
run as
Prelude> :l list_elem.hs
[1 of 1] Compiling Main             ( list_elem.hs, interpreted )
Ok, modules loaded: Main.
*Main> listElem 1 10
[1,2,3,4,5,6,7,8,9,10]
*Main> listHead 1 10
1
*Main> listTail 1 10
[2,3,4,5,6,7,8,9,10]
*Main> listLast 1 10
10
*Main> listInit 1 10
[1,2,3,4,5,6,7,8,9]
*Main>
-}

listElem y z = [y..z]
listHead y z = head [y..z]
listTail y z = tail [y..z]
listLast y z = last [y..z]
listInit y z = init [y..z]
