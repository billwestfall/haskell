{-

Prelude> :l lambdas01.hs
[1 of 1] Compiling Main             ( lambdas01.hs, interpreted )
Ok, modules loaded: Main.
*Main> chain 10
[10,5,16,8,4,2,1]
*Main> chain 15
[15,46,23,70,35,106,53,160,80,40,20,10,5,16,8,4,2,1]
*Main> chain 16
[16,8,4,2,1]

-}

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n =  n:chain (n `div` 2)
    | odd n  =  n:chain (n*3 + 1)

    numLongChains :: Int
    numLongChains = length (filter isLong (map chain [1..100]))
        where isLong xs = length xs > 15

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))
