module Arithmetik where

-- Aufgabe 1.1

pow1 b 0 = 1
pow1 b e = b * pow1 b (e -1)

-- Aufgabe 1.2

pow2 :: Int -> Int -> Int
pow2 b e
  | e < 0 = error "Negativer Exponenet"
  | e == 0 = 1
  | e `mod` 2 == 0 = pow2 (b * b) (e `div` 2) -- Ignore this error
  | otherwise = b * pow2 (b * b) (e `div` 2)

-- Aufgabe 1.3: Beispiel für End-Rekursion

pow3 :: Int -> Int -> Int
pow3 b e = pow2acc b e 1

-- Doesn't work / Don't know what should be doing
pow2acc :: Int -> Int -> Int -> Int
pow2acc b e acc
  | e < 0 = error "Negativer Exponenet"
  | e == 0 = acc
  | e `mod` 2 == 0 = pow2acc (b * b) (e `div` 2) acc
  | otherwise = b * pow2acc (b * b) (e `div` 2) (b * acc)


--Aufgabenstellung nicht verstanden
-- 1.4
root e r
  | e < 1 = error ("Nicht-positiver Wurzelexponent")
  | r < 0 = error ("Negativer Radikant")
  | otherwise = searchRoot 0 (r + 1)
  where
    searchRoot low high
      | low + 1 == high = low
      | pow3 half e <= r = searchRoot half high
      | otherwise = searchRoot low half
      where
        half = (low + high) `div` 2

-- 1.5


isPrime::Int -> Bool 
isPrime n = isPrime' n (root 2 n)

isPrime':: Int -> Int -> Bool 
isPrime' n d 
  | d == 2 = mod n 2 == 1
  | mod n d == 0 = isPrime' n (d-1)
  | otherwise = True







