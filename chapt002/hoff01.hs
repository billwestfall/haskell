{-
*Main> :l hoff01.hs
[1 of 1] Compiling Main             ( hoff01.hs, interpreted )
Ok, modules loaded: Main.
*Main> main
Do you have hoff-puppies? (Y/N)
N
Keep trying to get hoff-puppies
Do you have hoff-puppies? (Y/N)
Y
Congrats! Enjoy hoff-puppies!
-}
import Data.Char
import Control.Concurrent (threadDelay)

main = do
    putStrLn "Do you have hoff-puppies? (Y/N)"
    line <- getLine
    if line == "Y"
        then putStrLn "Congrats! Enjoy hoff-puppies!"
        else do
            putStrLn "Keep trying to get hoff-puppies"
            threadDelay 4000000
            main
