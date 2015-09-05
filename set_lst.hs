{- from http://learnyouahaskell.com/modules#data-list
run as
Prelude> :l set_lst.hs
[1 of 1] Compiling Main             ( set_lst.hs, interpreted )
Ok, modules loaded: Main.
*Main> set1
fromList " .?AIRadefhijlmnorstuy"
*Main> set2
fromList " !Tabcdefghilmnorstuvwy"
-}

import qualified Data.Set as Set

text1 = "I just had an anime dream. Anime... Reality... Are they so different?"
text2 = "The old man left his garbage can out and now his trash is all over my lawn!"

set1 = Set.fromList text1
set2 = Set.fromList text2
