--4. Реализовать на языке Haskell функцию, которая разделяет исходный список из целых чисел на два
--списка: список положительных чисел и список отрицательных чисел

separate [] =([],[])
separate x = ([filter (<0) x], [filter (>0) x])
  
main = print $ separate [-5..5]  
-- >([[-5,-4,-3,-2,-1]],[[1,2,3,4,5]])