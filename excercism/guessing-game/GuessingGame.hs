module GuessingGame (reply) where

reply :: Int -> String
reply guess 
    | guess == 42 = "Correct"
    | guess == 41 || guess == 43 = "So close"
    | guess < 41 = "Too low"
    | otherwise = "Too high"