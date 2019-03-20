# SPL
Вариант 7 

5,9,11,17,22,27,28,35,46,48

Задача 5
------
Определите функцию, которая увеличивает элементы исходного списка на единицу.

```lisp
(defun increase(list)
	(cond ( (null list) nil )
		( t (cons (+(car list) 1) (increase(cdr list))))))
```
```diff
>(increase '(-4 5 0))
(-3 6 1) 
```
```diff
>(increase '())
(NIL) 
```
Задача 9
--------
Определите функцию, разделяющую исходный список на два подсписка. В
первый из них должны попасть элементы с нечетными номерами, во второй —
элементы с четными номерами.

```lisp
(defun numb (x y)
  (cond ((eq x (car y)) 0)
        (t (+ 1 (numb x (cdr y))))))
	
(defun Even (d)
    (if (= (mod d 2) 0) t nil))

(defun Odd (d)
    (if (/= (mod d 2) 0) t nil))

(defun split (l) 
	(list
	    (mapcan (lambda (x) (if (Even (numb x l)) (list x) nil)) l)
	    (mapcan (lambda (x) (if (Odd (numb x l)) (list x) nil)) l)	   
))
```

```
>(split '(2 t 5 1 10 9))
((2 5 10) (T 1 9)) 
```
```
>print(split '())
(NIL NIL) 
```

Задача 11
----------
Определите функцию, осуществляющую разделение исходного списка на два
подсписка. В первый из них должно попасть указанное количество элементов
с начала списка, во второй — оставшиеся элементы.

```lisp
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
>(divide '(a b c d e f g) 0))
(NIL) 
```
```diff
>(divide '(a b c d e f g) 4)
((A B C D) (E F G))
```

Задача 22
--------------
(defun reverse-levels (l)
  (if (null (cdr l))
      l
      (list (reverse-levels (cdr l)) (car l))))
	  
	  
	 
(print (reverse-levels '(5 7 89 4 5 79)))

