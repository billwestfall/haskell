{-
*Main> :l page459a.hs
[1 of 1] Compiling Main             ( page459a.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
[2.0,7.0,12.0,17.0,22.0,27.0,32.0]
[(2.0,3.0),(7.0,4.0),(12.0,6.0),(17.0,8.0),(22.0,5.0),(27.0,3.0),(32.0,1.0)]
30.0
Mean is
17.0
Mean weighted is
15.5
Harmonic mean is
7.7885468449173665
Geometrix mean is
12.733751642957415
*Main> 
-}

import Statistics.Sample
import Data.Vector
import qualified Statistics.Distribution as D
import Statistics.Distribution.Normal

sample = fromList [2,7,12,17,22,27,32]
weightedSample = fromList [(2, 3), (7, 4), (12, 6), (17, 8), (22, 5), (27, 3), (32, 1)]

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
    putStrLn "Geometrix mean is"
    print $ geometricMean sample
