#!/usr/bin/env runhaskell

{-# LANGUAGE OverloadedStrings #-}

import Network.Curl

main = do
    curlGet "https://cucumber.io" []
--    name <- getLine
--    putStrLn (name)
