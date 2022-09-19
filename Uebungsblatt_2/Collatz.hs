module Collatz where

-- Die Loesung koennte kompakter sein, aber diese funktioniert auch


collatz :: Int -> [Int]
collatz a = iterateEdit a : collatz (iterateEdit2 a)

iterateEdit :: Int -> Int
iterateEdit a  
   | even a = (iterate (\x -> div x 2) a)!!0
   | otherwise = (iterate (\x -> (3 * x) + 1) a)!!0

iterateEdit2 :: Int -> Int
iterateEdit2 a  
   | even a = (iterate (\x -> div x 2) a)!!1
   | otherwise = (iterate (\x -> (3 * x) + 1) a)!!1


-- testing purposes
collatz_test :: Int -> [Int]
collatz_test a = take 100 (collatz a)

---------------------------------
--Teilaufgabe 2.2

num :: Int -> Int
num n = countOccurence (collatz n) 0


countOccurence :: [Int] -> Int -> Int
countOccurence (x:xs) y 
  | x == 1 = y
  | otherwise = countOccurence (xs) (y+1)

--Teilaufgabe 2.3

maxNum :: Int -> Int -> (Int, Int)
maxNum 

countOccurence :: [Int] -> Int -> Int -> [Int] -> [Int]
countOccurence (x:xs) b y indices
  | (x == 1 && y<=b) = countOccurence xs b (y+1) (indices : y)
  | otherwise = countOccurence xs b (y+1) (indices)


  

