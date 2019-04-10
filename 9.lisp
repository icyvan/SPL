;Определите функцию, разделяющую исходный список на два подсписка. 
;В первый из них должны попасть элементы с нечетными номерами, во второй — элементы с четными номерами.


(defun even-odd (lst)
    (cond
        ((null (car lst)) lst)
        (t
         (setq two-lst (even-odd (cddr lst)))
         (list
          (cons (car lst) (car two-lst))
          (cons (cadr lst) (cadr two-lst))
          )
         )
        )
    )

(print (even-odd `(1 2 3 4 5 6 )))
;>((1 3 5) (2 4 6)) 

(print (even-odd `(q w e r t y)))
;>((Q E T) (W R Y)) 
