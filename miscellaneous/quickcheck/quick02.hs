import System.IO
import Data.String
import Test.QuickCheck

prop_RevId xs = reverse xs == xs where types = xs::[Int]
