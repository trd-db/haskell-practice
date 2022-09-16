module Excercise2 (prefixes') where

-- https://www.youtube.com/watch?v=46dksIrx6jQ&list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV&index=11

-- Create a funciton prefix that returns all prefixes of a list
-- [1,2,3]
--      = [[1], [1,2], [1,2,3]]

prefixes' :: [a] -> [[a]]
prefixes' =
    foldr (\x acc -> [x] : (map ((:) x) acc)) []