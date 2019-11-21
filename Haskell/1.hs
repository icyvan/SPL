-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка

mysum [] = 0
mysum (x:y) = x + mysum y

main = print $ mysum [1, 2, 3, 4, 5 ]
-- >15





