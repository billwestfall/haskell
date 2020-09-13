import System.IO
import Data.String
import Test.QuickCheck

prop_RevRev xs = reverse (reverse xs) == xs where types = xs::[Int]
