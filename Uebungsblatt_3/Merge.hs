module Merge where

merge :: [Integer] -> [Integer] -> [Integer]
merge [] list = list
merge list [] = list
merge (x:xs) (y:ys) 
  | x <= y = x : merge xs (y:ys)
  | otherwise = y : merge ys (x:xs)



primes :: [Integer]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]

test n = take 100 (primepowers n)


primepowers :: Integer -> [Integer]
primepowers n = foldr (merge) (primes) ([map (^i) primes | i <- [2..n]])








