{-
MacBook-Air:05chapt billw$ ghci 008.hs 
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( 008.hs, interpreted )
Ok, modules loaded: Main.
*Main> quicksort [35,67,3,55,869,45,23,73,63]
[3,23,35,45,55,63,67,73,869]
*Main> quicksort "now is the time for all good men to come to the aid of their country"
"               aaccddeeeeeeffghhhiiiillmmmnnnooooooooorrrstttttttuwy"
*Main>
-}

quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted
