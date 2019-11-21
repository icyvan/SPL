--2. Реализовать на языке Haskell функцию нахождению максимального элемента списка.
mymax [] = 0
mymax (x:y) = max x (mymax y)

main = print $ mymax [1, 2, 3, 8, 4, 5, 6]
-- > 8
