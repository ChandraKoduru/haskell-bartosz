module Main where

import Lib

main :: IO ()
{-
main = putStr (show (sqDist 3 4))
main = putStrLn (show (sqDist 3 4))
main = putStrLn "Hello World!"
 -}

-- | distance from the origin
sqDist :: Num a => a -> a -> a
sqDist x y = x^2 + y^2

-- main = print (sqDist 3 4)

sqDist2 :: Num a => (a, a) -> a
sqDist2 (x, y) = x^2 + y ^2 -- pattern match for pair

sqDist3 :: Num a => (a, a) -> a
sqDist3 p = (fst p)^2 + (snd p)^2

-- main = print (sqDist3 (3,4))
-- main = print $ sqDist3 $ (3,4) -- $ weak binding ..very weak, right associative

sq :: Num a => a -> a
sq x = x ^ 2

-- > means print $ (sq 2) + 2
main6 = print $ sq 2  + 3 

-- if you want sq (2+3)
main2 = print $ sq $ 2 + 3
-- or
main3 = print $ sq (2 + 3)

dist pt = sqrt $ sqDist2 pt

-- point free notation...point means at the point of application..from mathematics
-- here we are defining a function interms of other functions
-- and no mention of "at the point of appliction"
-- hence the term "point free notation"
dist2  = sqrt . sqDist2 

main = someFunc
