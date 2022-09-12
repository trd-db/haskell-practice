module Pangram (isPangram) where
import Data.Char (isAlphaNum, toLower)

isPangram :: String -> Bool
isPangram text = isPangramHelper modText ['a'..'z']
    where modText = [toLower t | t <- text, isAlphaNum t]

isPangramHelper :: String -> String -> Bool
isPangramHelper [] _ = False
isPangramHelper _ [] = True
isPangramHelper text (x:xs)
    | x `elem` text = isPangramHelper text xs
    | otherwise = False
