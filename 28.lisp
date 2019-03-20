(defun atom-sum (list)
  (cond ((null list) 0)
    ((atom (car list)) (+ 1 (atom-sum (cdr list))))
    (t (atom-sum (cdr list)))))
	
(print(atom-sum '(2 91 f5 w 3 1)))
(print(atom-sum '(2 (3 6) 9 1 1)))
(print(atom-sum '( )))