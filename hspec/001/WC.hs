-- run as runhaskell WC.hs < quux.txt

main = interact wordCount
    where wordCount input = show (length (lines input)) ++ "\n"
