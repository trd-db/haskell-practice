module Excercise2 (nub') where

-- https://www.youtube.com/watch?v=Cxkqrg8FCt8&list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV&index=5

-- Create a function nub that removes all duplicates from a given list

nub' :: (Eq a) => [a] -> [a]
nub' [] = []
nub' (x:xs)
    | x `elem` xs = nub' xs
    | otherwise = x : nub' xs