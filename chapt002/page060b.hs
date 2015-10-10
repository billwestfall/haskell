{-
[1 of 1] Compiling Main             ( page060b.hs, interpreted )
Ok, modules loaded: Main.
*Main> evn_stuff 8
"Even"
*Main> evn_stuff 9
"Odd"
-}

evn_stuff p = if (p `mod` 2 == 0) then print "Even"
   else print "Odd"
