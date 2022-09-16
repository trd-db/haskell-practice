module Excercise3 (isAsc') where

-- https://www.youtube.com/watch?v=Cxkqrg8FCt8&list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV&index=5

-- Create a function isAsc that returns true if the list given is in ascending
-- order

isAsc' :: [Int] -> Bool
isAsc' [] = False
isAsc' [x] = True
isAsc' (x:y:xs) = 
    (x <= y) && isAsc' (y:xs)
