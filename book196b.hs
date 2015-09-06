{- compile as ghc -o guess_the_number book196b.hs

MacBook-Air:haskell billw$ ./guess_the_number
Which number in the string 1 to 10 am I thinking of?
3
Which number in the string 1 to 10 am I thinking of?
2
You are correct!
-}

import System.Random
import Control.Monad(when)

main = do
    gen <- getStdGen
    askForNumber gen

askForNumber  :: StdGen -> IO ()
askForNumber gen = do
  let (randNumber, newGen) = randomR (1, 10) gen :: (Int, StdGen)
  putStrLn "Which number in the string 1 to 10 am I thinking of? "
  numberString <- getLine
  when (not $ null numberString) $ do
    let number = read numberString
    if randNumber == number
      then  putStrLn "You are correct!"
      else putStrLn $ "Sorry it was " ++ show randNumber
    askForNumber newGen
