{-
Prelude> :l page033a.hs
[1 of 1] Compiling Main             ( page033a.hs, interpreted )
Ok, modules loaded: Main.
*Main> strange 4
"even!"
*Main> strange 5
"odd!"
*Main> strange 0
"even!"
*Main> strange (-1)
"odd!"
-}

strange n = if even n
  then  print ("even!")
  else print ("odd!")
