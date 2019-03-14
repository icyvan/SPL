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
Задача 11
----------
Определите функцию, осуществляющую разделение исходного списка на два
подсписка. В первый из них должно попасть указанное количество элементов
с начала списка, во второй — оставшиеся элементы.

```diff
(defun F (L M)
 (if L
  (if (zerop M) (cons nil (cons L nil))
   ((lambda (elem result)
     (cons (cons elem (car result))
      (cdr result)))
    (car L)
    (F (cdr L) (- M 1))))))
```
```diff
input:(f '(a b c d e f g) 0))
output:(NIL) 
```
```diff
input:(f '(a b c d e f g) 4)
output:((A B C D) (E F G))
```
