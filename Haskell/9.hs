-- 9. Реализовать на языке Haskell функцию, которая увеличивает элементы исходного списка в 10 раз

mult10 [] = []
mult10 (x:y) = x * 10 : mult10 y


main = print $ mult10 [1..5] 
-- >[10,20,30,40,50] 
