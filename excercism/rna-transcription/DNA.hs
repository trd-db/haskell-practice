module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA [] = Right ""
toRNA xs
    | null invalidDNA = Right convStr
    | otherwise       = Left $ head invalidDNA
    where
        convStr      = map convDNAToRNA validDNA
        validDNA     = filter isValidDNA xs
        invalidDNA   = filter (not . isValidDNA) xs
        isValidDNA y = y `elem` "GCTA"
        convDNAToRNA z = 
                case z of
                    'G' -> 'C'
                    'C' -> 'G'
                    'T' -> 'A'
                    'A' -> 'U'
                    _   -> z

