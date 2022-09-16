module Excercise3 (lagrange) where

-- https://www.youtube.com/watch?v=46dksIrx6jQ&list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV&index=11

-- Lagrange linear combination

testCase :: [(Float, Float)]
testCase = [(1.0,1.0), (2.0,4.0), (3.0,9.0)]

lagrange :: [(Float, Float)] -> Float -> Float
lagrange pts x =
        foldr (\(xj, yj) acc -> acc + (yj * lagProd x xj)) 0 pts
        where
            lagProd x xj =
                foldr (\(xm, ym) acc -> acc * xdiff x xm xj) 1 pts
            xdiff x xm xj
                | xm == xj = 1
                | otherwise = (x - xm)/(xj - xm)
