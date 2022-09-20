module Polynom where

type Polynom = [Double]

-- Aufgabe 2.1
cmult :: Polynom -> Double -> Polynom 
cmult x c = map (*c) x

-- Aufgabe 2.2

eval :: Polynom -> Double -> Double
eval poly c = foldr (\y x -> x*c + y) 0 poly


-- Aufgabe 2.3

deriv :: Polynom -> Polynom
deriv polynom = tail (zipWith (*) polynom (take (length polynom) [0,1..])) ++ [0]

-- a bit more elegant solution:
-- deriv p = zipWith (*) [1..] (tail p)




  
