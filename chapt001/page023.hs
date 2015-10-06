{-
page023a.hs:19:34:
    parse error in if statement: missing required then and else clauses
Failed, modules loaded: none.
Prelude>
-}


avepair m n                  =   (m + n)/2
remove m n                   =   if m = 0 then n else n-m
mathb m n                    =   if m < n then avepair (m n) else (m + n)/2
matha m n                    =   if m = n then m else mathb
