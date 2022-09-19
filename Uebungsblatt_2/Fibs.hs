module Fibs where

-- Musterloesung
fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)