--5. Реалиpовать на яpыке Haskell функцию, заменяющую в исходном списке два подряд идущих одинаковых
--элемента одним.

duplicate [] = []
duplicate (x:[]) = [x]
duplicate (x:y) = if (x==head y)
                     then x : duplicate (drop 1 y)
                     else x : (duplicate y)
main = print $ duplicate [1, 1, 2, 3, 3, 4, 5]

-- >[5,2,6,4,5,1,7]

