module Main where

import Lib

main :: IO ()
{-
main = print (sqDist 3 4)
main = putStr (show (sqDist 3 4))
main = putStrLn (show (sqDist 3 4))
main = putStrLn "Hello World!"
 -}

-- | distance from the origin
sqDist :: Num a => a -> a -> a
-- sqDist :: Int -> Int -> Int
sqDist x y = x^2 + y^2


sqDist2 :: Num a => (a, a) -> a
sqDist2 (x, y) = x^2 + y ^2 -- pattern match for pair

sqDist3 :: Num a => (a, a) -> a
sqDist3 p = (fst p)^2 + (snd p)^2

-- main = print (sqDist3 (3,4))
main = print $ sqDist3 $ (3,4) -- $ weak binding ..very weak, right associative
