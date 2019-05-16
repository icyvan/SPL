--11. Реализовать на языке Haskell функцию, которая, чередуя элементы списков [a, b, ...] и [1, 2, ...],
--образует новый список [a, 1, b, 2, ...].

alternation[][] = []
alternation (x:y) (x1:y1)  = [x] ++ [x1] ++  alternation y y1

main = print $ alternation [1,2,3]  [4,5,6]
--> [1,2,3,4]
