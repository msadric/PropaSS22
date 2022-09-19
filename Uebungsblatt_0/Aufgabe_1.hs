-- Beispiel Aufgabe aus der Vorlesung

square x = x * x
cube x = x * square x

main = putStr "Hallo Welt!"

-- Aufgabe 1.3

max3 x y z 
    | (max x y) > z = max x y
    | otherwise = max x z