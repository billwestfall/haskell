{-
[1 of 1] Compiling Main             ( page020a.hs, interpreted )
Ok, modules loaded: Main.
*Main> evenprod 2 3
True
*Main> sumbetween 3 1
6.0
*Main> avepair 4 3
3.5
*Main> first 3 2
3
*Main> second 3 2
2
*Main> sumdiff 3 2
(5,1)
-}


evenprod x y = even (x * y)
sumbetween m n = ((m+n)*(abs(m-n)+1))/2
avepair x y = (x + y)/2
first x y = x
second x y = y
sumdiff x y = (x + y, abs(x - y))
