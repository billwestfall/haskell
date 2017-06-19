{- boolean in haskell
run as runhaskell boolean.hs -}

main=do

i = 1
when (i < 3)

    if' True  even i
    putStrLn "True"   
    if' False even i
    putStrLn "False"

i = i + 1
