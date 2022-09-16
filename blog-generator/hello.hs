el :: String -> String -> String
el tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

html_ :: String -> String
html_ = el "html"

head_ :: String -> String
head_ = el "head"

title_ :: String -> String
title_ = el "title"

body_ :: String -> String
body_ = el "body"

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"

makeHtml :: String -> String -> String
makeHtml title content =
    html_
        (head_
            (title_ title)
        <>
        body_ content)

myhtml :: String
myhtml =
    makeHtml
        "My page title"
        (h1_ "My Heading"
        <>
        p_ "Hello world paragraph")

main :: IO ()
main = putStrLn myhtml
