;ќпределите функцию, вычисл€ющую, сколько всего атомов в списке (списочной структуре).


(defun atom-sum (&optional list)
    ((lambda (x) (setq last (cdr x))) list)
  (cond ((null list) 0)
    ((atom (car list)) (+ 1 (atom-sum last)))
    (t (atom-sum last))))

	
(print(atom-sum '(2 91 f5 w 3 1)))
(print(atom-sum '(2 (3 6) 9 1 1)))
(print(atom-sum '( )))