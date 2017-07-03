module Pangram (isPangram) where

import Data.Char
import Data.List

isPangram :: String -> Bool
isPangram text = do
  length (nub $ map toLower $ filter isAlpha text) == 26
