;Определите функцию, которая, чередуя элементы списков (a b...) и (1 2...),
;образует новый список (a 1 b 2 ...).

(defun alternate(X &optional  Y)
      (cond ( (NULL X) Y )
            (t (cons (car x) (alternate y (cdr x))) )
            )
      )
   
   
(print(alternate '(5 a 9) '(c b 3)))
;>(5 C A B 9 3)

(print(alternate '(8 g d 7 2) '(5 t y )))
;>(8 5 G T D Y 7 2) 
