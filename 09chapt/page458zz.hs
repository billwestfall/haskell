{-
first run: cabal install statistics
Prelude> :l page458zz.hs
[1 of 1] Compiling Main             ( page458zz.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
[1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0]
[(1.0,10.0),(2.0,1.0),(3.0,1.0),(4.0,1.0),(5.0,1.0)]
9.0
5.5
1.7142857142857142
3.414171521474055
4.528728688116765
*Main>
-}

import Statistics.Sample
import Data.Vector
import qualified Statistics.Distribution as D
import Statistics.Distribution.Normal

sample = fromList [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
weightedSample = fromList [(1, 10), (2, 1), (3, 1), (4, 1), (5, 1)]

main = do
    print sample
    print weightedSample

    print $ range sample

    print $ mean sample
    print $ meanWeighted weightedSample
    print $ harmonicMean sample
    print $ geometricMean sample
