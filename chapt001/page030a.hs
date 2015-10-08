{-
*Main> :l page030a.hs
[1 of 1] Compiling Main             ( page030a.hs, interpreted )
Ok, modules loaded: Main.
*Main> stringcopy (-1)
"Don't do it!"
*Main> stringcopy 5
"Hello world!"
-}

stringcopy n = if n < 0
      then print "Don't do it!"
      else print "Hello world!";;
