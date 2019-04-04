;Определите функцию, вычисляющую, сколько всего атомов в списке (списочной структуре).
 
(defun atom-sum (list)
    ((lambda (last) 
	     (cond ((null list) 0)
		     ((atom (car list)) (+ 1 (atom-sum last)))
		     (t (atom-sum last)))) (cdr list))
  )

	
(print(atom-sum '(2 91 f5 w 3 1)))
;>6
(print(atom-sum '(2 (3 6) 9 1 1)))
;>4
(print(atom-sum '( ))
;>0
