(defun reverse-levels (l)
  (if (null (cdr l))
      l
      (list (reverse-levels (cdr l)) (car l))))
	  
	  
	 
(print (reverse-levels '(5 7 89 4 5 79)))
