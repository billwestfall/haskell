{-
Prelude> :l page023b.hs
[1 of 1] Compiling Main             ( page023b.hs, interpreted )
Ok, modules loaded: Main.
*Main> not p

<interactive>:12:1:
    Ambiguous occurrence ‘not’
    It could refer to either ‘Main.not’, defined at page023b.hs:9:1
                          or ‘Prelude.not’,
                             imported from ‘Prelude’ at page023b.hs:1:1
                             (and originally defined in ‘GHC.Classes’)
*Main> p or b

<interactive>:13:6: Not in scope: ‘b’
*Main> p & b

<interactive>:14:5: Not in scope: ‘b’
*Main>
-}


not p              = False
p or b              = True
p & b          = b
