(defun uvelichit(list)
	(cond 
		( (null list) nil )
		( t (cons (+(car list) 1) (uvelichit(cdr list))) )
	) 
)
