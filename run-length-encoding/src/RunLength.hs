module RunLength (decode, encode) where

decode :: String -> String
decode text = ""

encode :: String -> String
encode []     = []
encode (x:xs) = thirdEl $ foldr encodeFold (1, x, "") xs

encodeFold (count, char, result) x = case x == char of
  True  -> (count + 1, x, result)
  False -> (1, x, (++) result $ show count : char)
thirdEl :: (a, b, c) -> c
thirdEl (_, _, x) = x
