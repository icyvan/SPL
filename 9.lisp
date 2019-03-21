;Определите функцию, разделяющую исходный список на два подсписка. 
;В первый из них должны попасть элементы с нечетными номерами, во второй — элементы с четными номерами.


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

(print(split '(2 t 5 1 10 9)))
(print(split '()))
