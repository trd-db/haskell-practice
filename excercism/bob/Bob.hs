module Bob (responseFor) where

import Data.Char (isAlpha, isUpper, isSpace)

responseFor :: String -> String
responseFor xs
    | null text         = "Fine. Be that way!"
    | isYellingQuestion = "Calm down, I know what I'm doing!"
    | isYelling         = "Whoa, chill out!"
    | isQuestion        = "Sure."
    | otherwise         = "Whatever."
    where 
        text              = filter (not . isSpace) xs
        letters           = filter isAlpha text
        isYelling         = all isUpper letters && (not . null) letters
        isQuestion        = last text == '?'
        isYellingQuestion = isYelling && isQuestion

