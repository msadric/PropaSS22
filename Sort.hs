module Sort where

-- 2.1

insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y : ys)
  | x <= y = x : y : ys
  | otherwise = y : insert x ys

-- 2.2
insertSort:: [Int] -> [Int] -- Ignore this error error 
insertSort [] = []
insertSort (x:xs) = insert x (insertSort xs)


-- 2.3
merge:: [Int] -> [Int] -> [Int]
merge [] [] = [] -- nicht notwendig
merge [] list = list
merge list [] = list
merge (x:xs) (y:ys) 
  | x <= y = x : merge xs (y:ys)
    | otherwise = y : merge ys (x:xs)

-- 2.4

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]

-- mergeSort (x:xs) = merge [x] (mergeSort xs) MEINE VARIANTE: funktioniert auch!

mergeSort xs = merge  
    (mergeSort (take (length xs `div` 2) xs))
    (mergeSort (drop (length xs `div` 2) xs))




