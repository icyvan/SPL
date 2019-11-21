;Определите функцию ПОДМНОЖЕСТВО, которая проверяет, 
;является ли одно множество подмножеством другого. 
;Определите также СОБСТВЕННОЕ-ПОДМНОЖЕСТВО.


(defun subset (x y)
    (cond 
        ((null x) t)
        ((member (car x) y) (subset (cdr x) y))
    )
)


(defun own-subset (x y)
    (cond 
        ((null x) nil)
        ((equalp x y) nil)
        (t (subset (x y)))
    )
)
 
(print (subset '(1 2) '(f 1 t 3 5 2)))
;> T
(print (subset '(d 1) '(f 5 2 d i x)))
;> NIL
(print (subset '( ) '(f 5 2 d i x)))
;> T
(print (own-subset nil '(4 3)))
;> NIL
(print (own-subset '(4 3) '(4 3)))
;> NIL
