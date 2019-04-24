;Напишите генератор порождения чисел Фибоначчи: 0, 1, 1, 2, 3, 5, ...

(defun fibonachi ()
	(let ((previous1 0) (previous2 1) (elem 0) (next 0))
		(lambda () (and
			(setq elem previous1)
			(setq next (+ previous1 previous2))
			(setq previous1 previous2)
			(setq previous2 next)
			elem
		))
	)
)

(setq gen (fibonachi))


(print (funcall gen)) ; 0
(print (funcall gen)) ; 1
(print (funcall gen)) ; 1
(print (funcall gen)) ; 2
(print (funcall gen)) ; 3
(print (funcall gen)) ; 5
