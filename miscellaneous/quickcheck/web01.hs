import Monad
import Test.QuickCheck
import Test.QuickCheck.Monadic as QCM
import Test.WebDriver
import Test.WebDriver.Commands

main :: IO ()
main = return ()

openPageAndPrintBodyText = runSession defaultSession capabilities $ do
    setWindowSize (720, 800)
    openPage url
    body <- findElem $ ByTag $ "body"
    bodyText <- getText body
    liftIO $ IO.putStrLn $ "<body> text:\n"
                         ++ take 100 (unpack bodyText)
                         ++ "\n... That was the first 100 chars!"
  where
    capabilities = allCaps { browser=chrome }
    url = "http://www.theatlantic.com/health/archive/2014/06/study-when-remembering-practice-doesnt-always-make-perfect/373355/"
