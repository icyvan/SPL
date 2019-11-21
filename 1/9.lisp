;Определите функцию, разделяющую исходный список на два подсписка. 
;В первый из них должны попасть элементы с нечетными номерами, во второй — элементы с четными номерами.


(defun even-odd (lst)
    ( 
         (lambda (first-lst second-lst rest) 
             (
                 cond
                    ( (null lst) (list NIL NIL))
                    ((null second-lst) (list (list first-lst) NIL))
                    (T (list 
                            (cons first-lst (car (even-odd rest))) 
                            (cons second-lst (cadr (even-odd rest))) 
                       )
                    )
             )
        ) (car lst) (cadr lst) (cddr lst)
    )
)

(print (even-odd `(1 2 3 4 5 6 )))
;>((1 3 5) (2 4 6)) 

(print (even-odd `(q w e r t y)))
;>((Q E T) (W R Y))
