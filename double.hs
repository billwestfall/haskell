  {-  from http://learnyouahaskell.com/chapters run as
  MacBook-Air:haskell billw$ ghci
  GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
  Prelude> :l double.hs
  [1 of 1] Compiling Main             ( double.hs, interpreted )
  Ok, modules loaded: Main.
  *Main> doubleMe 10
  20
  *Main> doubleMe 1.62
  3.24
-}

  doubleMe x = x + x
