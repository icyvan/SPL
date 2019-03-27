;Определите функцию ПОДМНОЖЕСТВО, которая проверяет, 
;является ли одно множество подмножеством другого. 
;Определите также СОБСТВЕННОЕ-ПОДМНОЖЕСТВО.


(defun subset (x y)
  (cond ((null x) t)
        ((member (car x) y) (subset (cdr x) y))
        (t nil)))  
 
(print (subset '(1 2) '(f 1 t 3 5 2)))
(print (subset '(d 1) '(f 5 2 d i x)))
(print (subset '( ) '(f 5 2 d i x)))