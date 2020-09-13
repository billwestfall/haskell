import System.IO
import Data.String
import Test.QuickCheck

prop_Insert s = ((\s -> s == s) :: [Char] -> Bool)
