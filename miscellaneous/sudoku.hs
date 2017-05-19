{-
run as:
ghc -o sudoku sudoku.hs
cat >> schema
  0 5 0 0 6 0 0 0 1
  0 0 4 8 0 0 0 7 0
  8 0 0 0 0 0 0 5 2
  2 0 0 0 5 7 0 3 0
  0 0 0 0 0 0 0 0 0
  0 3 0 6 9 0 0 0 5
  7 9 0 0 0 0 0 0 8
  0 1 0 0 0 6 5 0 0
  5 0 0 0 3 0 0 6 0
./sudoku < schema
9 5 3 7 6 2 8 4 1
6 2 4 8 1 5 9 7 3
8 7 1 3 4 9 6 5 2
2 8 9 4 5 7 1 3 6
1 6 5 2 8 3 4 9 7
4 3 7 6 9 1 2 8 5
7 9 6 5 2 4 3 1 8
3 1 8 9 7 6 5 2 4
5 4 2 1 3 8 7 6 9
-}

import Data.List

type T = (Int,Int) -> [Int]

main = do
  s <- getContents
  putStr $ unlines $ map disp $ solve [input s]

solve :: [T] -> [T]
solve s = foldr search s idx where
    search p l = [mark (p,n) s | s <- l, n <- s p]

mark :: ((Int,Int),Int) -> T -> T
mark (p@(i,j),n) s q@(x,y) =
  if p==q then [n] else
  if x==i || y==j || e x i && e y j then delete n $ s q else s q
  where e a b = div (a-1) 3==div (b-1) 3

disp :: T -> String
disp s  = unlines [unwords [show $ head $ s (i,j) | j <- [1..9]] | i <- [1..9]]

input :: String -> T
input s = foldr mark (const [1..9]) $
  [(p,n) | (p,n) <- zip idx $ map read $ lines s >>= words, n>0]

idx :: [(Int,Int)]
idx = [(i,j) | i <- [1..9], j <- [1..9]]
