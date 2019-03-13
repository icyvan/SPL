(defun inc(li)
	(cond 
		( (null li) nil )
		( t (cons (+(car li) 1) (inc(cdr li))) )
	) 
)