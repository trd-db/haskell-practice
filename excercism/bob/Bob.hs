module Bob (responseFor, isAllCaps) where

import Data.Char (isAlpha, isUpper, isSpace)

responseFor :: String -> String
responseFor xs
    | null tex = "Fine. Be that way!"
    | isAllCaps tex && last tex == '?' = "Calm down, I know what I'm doing!"
    | isAllCaps tex = "Whoa, chill out!"
    | last tex == '?' = "Sure."
    | otherwise = "Whatever."
    where tex = [x | x <- xs, not $ isSpace x]

isAllCaps :: [Char] -> Bool
isAllCaps text = all ((== True) . isUpper) newText && not (null newText)
    where
        newText = [x | x <- text, isAlpha x]
