-- collatz number in haskell

main = do
  putStrLn "Please enter a positive integer:"
  raw_no <- getLine
  read raw_no :: Int

when (raw_no /= 1)
  i = 0
  do
    if' True  even raw_no
    raw_no_i = i + 1
    raw_act = raw_no / 2
    print raw_act   
    if' False even raw_no
    raw_no_i = i + 1
    raw_act = (raw_no * 3) + 1
    print raw_act 

i = i + 1
