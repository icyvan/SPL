;Определите функцию, которая, чередуя элементы списков (a b...) и (1 2...),
;образует новый список (a 1 b 2 ...).

(defun alternate(&optional X Y)
      (cond ( (NULL X) Y )
            (   t   (cons (car x) (alternate y (cdr x))) )
   ))
   
   
(print(alternate '(5 a 9) '(c b 3)))
(print(alternate '(8 g d 7 2) '(5 t y )))
