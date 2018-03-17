import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "parse" $ do
    context "when provided with invalid input" $ do
      it "returns a parse error" $ do
        parse "some invalid input" `shouldBe` Left "parse error"
