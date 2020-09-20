import Test.QuickCheck
import Test.QuickCheck.Monadic as QCM
import Test.WebDriver
import Test.WebDriver.Commands
import Test.WebDriver.Classes (getSession)

prop_HighlightsSelectedText sesh domInfo = monadicIO $ do
    selection <- pick $ generateSelection domInfo
    domInfo' <- run $ runWD sesh $ do
        actuallySelectText selection
        getDOMInfoNeededForVerifyingPropertyOfHighlightedText
    assert $ highlightedTextHasProperty domInfo'

setUpAndTest = do
    (domInfo, sesh) <- runWD defaultSession $ do
        createSession capabilities >> openPage url >> activateGloss
        domInfo <- getDOMInfoNeededForGeneratingSelections
        s <- getSession
        return (domInfo, s)
    quickCheck $ prop_HighlightsSelectedText sesh domInfo
    -- If you're finding lots of bugs, you might omit the next line so that the browser stays open for manual inspection.
    runWD sesh closeSession
  where
    capabilities = allCaps { browser=chrome }
    url = "http://www.theatlantic.com/health/archive/2014/06/study-when-remembering-practice-doesnt-always-make-perfect/373355/"
