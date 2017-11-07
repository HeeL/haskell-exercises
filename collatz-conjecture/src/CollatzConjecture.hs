module CollatzConjecture (collatz) where
    
    collatz :: Integer -> Maybe Integer
    collatz x
      | x <= 0    = Nothing
      | otherwise = Just . fromIntegral . length . takeWhile (> 1) $ sequenceFrom x
    
    sequenceFrom :: Integer -> [Integer]
    sequenceFrom x = x:sequenceFrom(next x)
    
    next :: Integer -> Integer
    next x
      | x `mod` 2 == 0 = x `div` 2
      | otherwise  = (x * 3) + 1