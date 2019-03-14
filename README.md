# SPL
Вариант 7 

5,9,11,17,22,27,28,35,46,48

Задача 5
------
Определите функцию, которая увеличивает элементы исходного списка на единицу.

```list
(defun increase(list)
	(cond ( (null list) nil )
		( t (cons (+(car list) 1) (increase(cdr list))))))
```
```diff
input:(increase '(-4 5 0))
output:(-3 6 1) 
```
```diff
input:(increase '())
output:(NIL) 
```
Задача 11
----------
Определите функцию, осуществляющую разделение исходного списка на два
подсписка. В первый из них должно попасть указанное количество элементов
с начала списка, во второй — оставшиеся элементы.

```diff
(defun divide (list length)
 (if list
  (if (zerop length) (cons nil (cons list nil))
   ((lambda (elem result)
     (cons (cons elem (car result))
      (cdr result)))
    (car list)
    (F (cdr list) (- length 1))))))
```
```diff
input:(divide '(a b c d e f g) 0))
output:(NIL) 
```
```diff
input:(divide '(a b c d e f g) 4)
output:((A B C D) (E F G))
```
