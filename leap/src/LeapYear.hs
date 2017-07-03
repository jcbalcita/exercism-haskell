module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear x
  | x `mod` 400 == 0 = True
  | x `mod` 4 == 0
    && x `mod` 100 /= 0 = True
  | otherwise = False
