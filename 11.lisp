(defun F (L M)
 (if L
  (if (zerop M)
   (cons nil (cons L nil))
   ((lambda (elem result)
     (cons
      (cons elem (car result))
      (cdr result)))
    (car L)
    (F (cdr L) (- M 1))))))
 
