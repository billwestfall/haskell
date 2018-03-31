import Test.QuickCheck
import Data.List

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort lhs ++ [x] ++ qsort rhs
  where lhs = filter (< x) xs
        rhs = filter (>= x) xs
prop_idempotent xs = qsort (qsort xs) == qsort xs

main = do  
    return ()  
    return "HAHAHA"  
    line <- getLine  
    return "BLAH BLAH BLAH"  
    return 4  
    putStrLn line
