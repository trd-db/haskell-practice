module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
    | n <= 0 = Nothing
    | otherwise = Just $ collatz' n 0
    where
        collatz' 1 acc = acc
        collatz' n acc = collatz' (if even n then n `div` 2 else 3 * n + 1) (acc + 1)