module Excercise1 (rev') where

-- https://www.youtube.com/watch?v=46dksIrx6jQ&list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV&index=11

-- Create a funciton rev that reverses a list

rev' :: [a] -> [a]
rev' = foldr (\x acc -> acc ++ [x]) []