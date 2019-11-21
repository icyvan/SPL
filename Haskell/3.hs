--3.Реализовать на языке Haskell функцию, удаляющую из исходного списка элементы с чётными номерами

dropEven[] = []
dropEven  (x:y) =  x : dropEven  (drop 1 y)

main = print $ dropEven [1..10]

-- [1,3,5,7,9]
