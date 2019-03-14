# SPL
Вариант 7 

5,9,11,17,22,27,28,35,46,48

Задача 5
------
Определите функцию, которая увеличивает элементы исходного списка на единицу.

```diff
(defun uvelichit(list)
	(cond ( (null list) nil )
		( t (cons (+(car list) 1) (uvelichit(cdr list))))))
```
```diff
input:(uvelichit '(-4 5 0))
output:(-3 6 1) 
```
```diff
input:(uvelichit '())
output:(NIL) 
```

