module Excercise4 (hasPath') where

-- https://www.youtube.com/watch?v=Cxkqrg8FCt8&list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV&index=5

-- See if directed graph has a path between two nodes
-- path between nodes is [(1,2),(2,1),(2,3)]
-- 1 <=> 2 => 3

testCase :: [(Int, Int)]
testCase = [(1,2),(2,3),(3,2),(4,3),(4,5)]

hasPath' :: [(Int, Int)] -> Int -> Int -> Bool
hasPath' [] _ _  = False
hasPath' xs n1 n2
    | n1 > n2 && (n1, n1-1) `elem` xs = hasPath' xs (n1-1) n2
    | n1 < n2 && (n1, n1+1) `elem` xs = hasPath' xs (n1+1) n2
    | n1 == n2 = True
    | otherwise = False