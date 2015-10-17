{-
*Main> :l page314a.hs
[1 of 1] Compiling Main             ( page314a.hs, interpreted )
Ok, modules loaded: Main.
*Main> Set.null $ Set.fromList [3,4,5]
False
*Main> Set.member 3 $ Set.fromList [3,4,5]
True
*Main> Set.member 8 $ Set.fromList [3,4,5]
False
-}

    import qualified Data.Set as Set
