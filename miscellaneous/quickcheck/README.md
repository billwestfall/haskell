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
