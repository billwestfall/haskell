{- boolean in haskell
run as runhaskell boolean.hs -}

i = 1
when (i < 3)

    if' True  even i
    print "True"   
    if' False even i
    print "False"

i = i + 1
