module Excercise1 (elem') where

-- https://www.youtube.com/watch?v=Cxkqrg8FCt8&list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV&index=5

-- Create a function elem that retruns True if an elelment is in a given list
-- and returns false otherwise

elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' elm xs =
    aux elm xs False
    where 
        aux _ [] acc = acc
        aux z (y:ys) acc
            | y == z = aux z ys True
            | otherwise = aux z ys acc