module LeapYear (isLeapYear) where

devidableBy :: Integer -> Integer -> Bool
devidableBy x y = mod x y == 0

isLeapYear :: Integer -> Bool
isLeapYear year = devidableBy year 4 && not (devidableBy year 100) || devidableBy year 100 && devidableBy year 400
