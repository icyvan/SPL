;Определите функцию, которая обращает список (а b с) и разбивает его на
;уровни (((с) b) а).


(defun reverse-levels (lst)
    ((lambda (last) 
	     (if (null last) lst
        (list (reverse-levels last) (car lst)))) (cdr lst)))

	 
(print (reverse-levels '(5 7 89 4 5 79)))        
;>((((((79) 5) 4) 89) 7) 5) 
 
