import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ before_ flushDb $ do
  describe "/api/users/count" $ do
    it "returns the number of users" $ do
      post "/api/users/create" "name=Jay"
      get "/api/users/count" `shouldReturn` 1

    context "when there are no users" $ do
      it "returns 0" $ do
        get "/api/users/count" `shouldReturn` 0
