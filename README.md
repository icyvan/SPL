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
Определите функцию, которая обращает список (а b с) и разбивает его на
уровни (((с) b) а).

```lisp
(defun reverse-levels (l)
     ((lambda (x) (setq last (cdr x))) l)
  (if (null last)
      l
      (list (reverse-levels last) (car l))))
```
```
>(reverse-levels '(a b c))
(((C) B) A) 
```
```
>(reverse-levels '(5 g 4 5 79))
(((((79) 5) 4) G) 5) 
```
Задача 27
---------------
Определите функцию, которая, чередуя элементы списков (a b...) и (1 2...),
образует новый список (a 1 b 2 ...).

```lisp
(defun alternate(&optional X Y)
      (cond ( (NULL X) Y )
            (   t   (cons (car x) (alternate y (cdr x))) )
   ))
```
```
>(alternate '(5 a 9) '(c b 3))
(5 C A B 9 3) 
```
```
>print(alternate '(8 g d 7 2) '(5 t y ))
(8 5 G T D Y 7 2) 
```

Задача 28
-------------
```lisp
(defun atom-sum (&optional list)
  (cond ((null list) 0)
    ((atom (car list)) (+ 1 (atom-sum (cdr list))))
    (t (atom-sum (cdr list)))))
```
```
>(atom-sum '(2 91 f5 w 3 1))
6
```
```
>(atom-sum '(2 (3 6) 9 1 1))
4
```
```
>(atom-sum '( ))
0
```
