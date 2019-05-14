-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка

sum_list :: [Int] -> Int
sum_list (x) = foldl1  (+)  x

main = print $ sum_list [1 , 2 , 3 , 4]
-- > 10





