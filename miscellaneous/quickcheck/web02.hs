import Test.QuickCheck
import Test.QuickCheck.Monadic as QCM
import Test.WebDriver
import Test.WebDriver.Commands

main :: IO ()
main = return ()

prop_HighlightsSelectedText = QCM.monadicIO $ do
    domInfo <- QCM.run $ runSession defaultSession capabilities $ do
        openPage url
        activateGloss
        getDOMInfoNeededForGeneratingSelections
    selection <- QCM.pick $ generateSelection domInfo
    QCM.run $ liftIO $ putStrLn $ "Generated a selection: " ++ show selection
  where
    capabilities = allCaps { browser=chrome }
    url = "http://www.theatlantic.com/health/archive/2014/06/study-when-remembering-practice-doesnt-always-make-perfect/373355/"
