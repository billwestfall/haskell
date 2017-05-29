import Control.Monad
import Control.Monad.IO.Class
import Data.IORef
import Graphics.UI.Gtk hiding (Action, backspace)

main :: IO ()
main = do
  void initGUI
  window <- windowNew
  set window [ windowTitle         := "There have been no clicks yet"
             , windowResizeable    := False
             , windowDefaultWidth  := 230
             , windowDefaultHeight := 250 ]
  widgetShowAll window
  mainGUI
