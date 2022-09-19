module Polynom where

type Polynom = [Double]

-- Aufgabe 1.1
cmult :: Polynom -> Double -> Polynom 
cmult x c = map (*c) x

-- Aufgabe 1.2

eval :: Polynom -> Double -> Double
eval [a] x = a
eval [a,b] x = a + b * x
--eval p x = foldr (* x) 1 p

deriv :: Polynom -> Polynom 
deriv p = [i * j | i <- [0..length p - 1], j <- p]
  
