{-
*Main> :l page458a.hs
[1 of 1] Compiling Main             ( page458a.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
[30.0,32.0,33.0,37.0,42.0]
[(30.0,6.0),(32.0,9.0),(33.0,7.0),(37.0,12.0),(42.0,6.0)]
12.0
Mean is
34.8
Mean weighted is
34.875
Harmonic mean is
34.311693655628545
Geometric mean is
34.54993522425276
*Main>
-}

import Statistics.Sample
import Data.Vector
import qualified Statistics.Distribution as D
import Statistics.Distribution.Normal

sample = fromList [30,32,33,37,42]
weightedSample = fromList [(30, 6), (32, 9), (33, 7), (37, 12), (42, 6)]

main = do
    print sample
    print weightedSample

    print $ range sample

    putStrLn "Mean is"
    print $ mean sample
    putStrLn "Mean weighted is"
    print $ meanWeighted weightedSample
    putStrLn "Harmonic mean is"
    print $ harmonicMean sample
    putStrLn "Geometric mean is"
    print $ geometricMean sample
