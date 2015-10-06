{- run as

ghc --make name
[1 of 1] Compiling Main             ( name.hs, name.o )
Linking name ...
./name
Hello, what's your name?
Bill
Hey Bill, you rock!

-}



main = do
    foo <- putStrLn "Hello, what's your name?"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")
