module LastDigit (getLastDigit) where

    getLastDigit :: [Integer] -> Integer

    getLastDigit []     = 1
    getLastDigit (x:xs) = (x `mod` 10) ^ extractLastDigitFromNumbers xs `mod` 10

    extractLastDigitFromNumbers [] = 1
    extractLastDigitFromNumbers (0:xs) = if equalZero xs then 1 else 0
    extractLastDigitFromNumbers (x:xs) = case x `mod` 4 of
       0 -> if equalZero xs then 1 else 4
       1 -> 1
       2 | equalZero xs -> 1
       _ -> if isOdd xs then 3 else 1

    isOdd []     = True
    isOdd (x:xs) = x `mod` 2 /= 0 || equalZero xs

    equalZero []     = False
    equalZero (0:xs) = not (equalZero xs)
    equalZero (_:xs) = False
