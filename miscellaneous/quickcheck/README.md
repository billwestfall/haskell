trying out Haskell's QuickCheck

files can be loaded then run from ghci like

```ghci
GHCi, version 8.4.2: http://www.haskell.org/ghc/  :? for help
Prelude> :l quick01.hs
[1 of 1] Compiling Main             ( quick01.hs, interpreted )
Ok, one module loaded.
*Main> quickCheck prop_Insert
+++ OK, passed 100 tests.
*Main>
 
the quick02.hs file is an example of a failing condition for quickCheck

```ghci
GHCi, version 8.4.2: http://www.haskell.org/ghc/  :? for help
Prelude> :l quick02.hs
[1 of 1] Compiling Main             ( quick02.hs, interpreted )
Ok, one module loaded.
*Main> quickCheck prop_RevId
*** Failed! Falsifiable (after 3 tests and 3 shrinks):    
[0,1]
*Main>
