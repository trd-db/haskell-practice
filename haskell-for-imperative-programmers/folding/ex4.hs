module Excercise4 (foldtrie) where

-- https://www.youtube.com/watch?v=46dksIrx6jQ&list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV&index=11

-- Trie/prefix tree

data Trie a = Leaf a | Node a [Trie a]

t :: Trie Char
t =
    Node
        'c'
        [ Node
            'a'
            [Leaf 'r', Leaf 't'],
        Node
            'o'
            [ Node
                'o'
                [Leaf 'l']
            ]
        ]


foldtrie :: (b -> a -> b) -> b -> Trie a -> b
foldtrie f acc (Leaf x) = f acc x 
foldtrie f acc (Node x xs) = foldl (foldtrie f) (f acc x) xs