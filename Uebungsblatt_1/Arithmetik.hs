module Arithmetik where

-- Aufgabe 1.1

pow1 b 0 = 1
pow1 b e = b * (pow1 b (e-1))

-- Aufgabe 1.2

pow2 :: Int -> Int -> Int
pow2 b e 
    | e < 0 = error "Negativer Exponenet"
    | e == 0 = 1
    | e `mod` 2 == 0 = pow2 (b*b) (e `div` 2)
    | otherwise = b * (pow2 (b*b) (e `div` 2))
    
-- Aufgabe 1.3: Beispiel für End-Rekursion 

--pow3 :: Int -> Int -> Int
--pow3 b e = pow2acc b e 1

--pow2acc b e acc | e < 0 = error "Negativer Exponenet"
   -- | e == 0 = 1
   -- | e `mod` 2 == 0 = pow2acc (b*b) (e `div` 2) 
   -- | otherwise = b * (pow2acc (b*b) (e `div` 2))


{-
-- 1.4
root e r = 
    | (r == 1) = e
    | (r <= 0) = error "r kleiner als 1"
    | ((pow2 x e) >= r) = x - 1
    | otherwise 


help x a b 
    | (b - a) == 1 -}

    -- Aufgabe 1.5

    isPrime:: Integer -> Bool
    isPrime n = 
        
    