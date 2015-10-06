{- run as

Prelude> :l book207b.hs
[1 of 1] Compiling Main             ( book207b.hs, interpreted )
Ok, modules loaded: Main.
*Main> solveRPN "5 4 *"
20.0
*Main> solveRPN "5 4 +"
9.0
*Main> solveRPN "5 4 -"
1.0
*Main> solveRPN "5 4 /"
1.25
*Main> solveRPN "5 4 ^"
625.0
*Main> solveRPN "5 ln"
1.6094379124341003
*Main> solveRPN "4 5 sum"
9.0


-}

solveRPN :: String -> Double
solveRPN = head . foldl foldingFunction [] . words
  where   foldingFunction (x:y:ys) "*" = (y * x):ys
          foldingFunction (x:y:ys) "+" = (y + x):ys
          foldingFunction (x:y:ys) "-" = (y - x):ys
          foldingFunction (x:y:ys) "/" = (y / x):ys
          foldingFunction (x:y:ys) "^" = (y ** x):ys
          foldingFunction (x:xs) "ln" = log x:xs
          foldingFunction xs "sum" = [sum xs]
          foldingFunction xs numberString = read numberString:xs
