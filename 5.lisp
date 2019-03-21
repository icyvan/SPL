;Определите функцию, которая увеличивает элементы исходного списка на единицу

(defun increase(list)
	(cond 
		( (null list) nil )
		( t (cons (+(car list) 1) (increase(cdr list))) )
	) 
)

(print (increase '(-4 5 0)))
(print (increase '()))
