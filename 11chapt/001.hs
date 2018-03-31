import Test.QuickCheck
import Data.List

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort lhs ++ [x] ++ qsort rhs
  where lhs = filter (< x) xs
        rhs = filter (>= x) xs
prop_idempotent xs = qsort (qsort xs) == qsort xs

main = do
    a <- return "hello"  
    b <- return "world"  
    putStrLn $ a ++ " " ++ b

{-
Prelude> :l 001.hs
[1 of 1] Compiling Main             ( 001.hs, interpreted )
Ok, modules loaded: Main.
*Main> prop_idempotent []
True
*Main> prop_idempotent [1,1,1,1]
True
*Main> prop_idempotent [1..100]
True
*Main> prop_idempotent [1,5,2,1,2,0,9]
True
*Main> generate 10 (System.Random.mkStdGen 2) arbitrary :: [Bool]

<interactive>:8:1:
    Couldn't match expected type ‘System.Random.StdGen
                                  -> Gen a1 -> [Bool]’
                with actual type ‘IO a0’
    The function ‘generate’ is applied to three arguments,
    but its type ‘Gen a0 -> IO a0’ has only one
    In the expression:
        generate 10 (System.Random.mkStdGen 2) arbitrary :: [Bool]
    In an equation for ‘it’:
        it = generate 10 (System.Random.mkStdGen 2) arbitrary :: [Bool]
*Main> :type quickCheck
quickCheck :: Testable prop => prop -> IO ()
*Main> quickCheck (prop_idempotent :: [Integer] -> Bool)
+++ OK, passed 100 tests.
*Main> :type quickCheck
quickCheck :: Testable prop => prop -> IO ()
*Main> generate 10 (System.Random.mkStdGen 2) arbitrary :: [Bool]

<interactive>:12:1:
    Couldn't match expected type ‘System.Random.StdGen
                                  -> Gen a1 -> [Bool]’
                with actual type ‘IO a0’
    The function ‘generate’ is applied to three arguments,
    but its type ‘Gen a0 -> IO a0’ has only one
    In the expression:
        generate 10 (System.Random.mkStdGen 2) arbitrary :: [Bool]
    In an equation for ‘it’:
        it = generate 10 (System.Random.mkStdGen 2) arbitrary :: [Bool]
*Main> :type verboseCheck
verboseCheck :: Testable prop => prop -> IO ()
*Main> quickCheck (prop_idempotent :: [Integer] -> Bool)
+++ OK, passed 100 tests.
*Main> :type verboseCheck
verboseCheck :: Testable prop => prop -> IO ()
*Main> verboseCheck (prop_idempotent :: [Integer] -> Bool)
Passed: 
-}
