{- boolean in haskell
run as runhaskell boolean.hs -}

main = do

let i = 1
when (i < 3)
  do
    if' True  even i
    putStrLn "True"   
    if' False even i
    putStrLn "False"

i = i + 1
