(defun increase(list)
	(cond 
		( (null list) nil )
		( t (cons (+(car list) 1) (increase(cdr list))) )
	) 
)


(defun decrease(list)
	(cond 
		( (null list) nil )
		( t (cons (-(car list) 1) (decrease(cdr list))) )
	) 
)


(defun atom-sum (list)
    (
     (lambda (last) 
             (cond 
                 ((null list) 0)
                 (t
                  ((lambda (last-atom-sum)
                           (cond ((null list) 0)
                               ((atom (car list)) (+ 1 last-atom-sum))
                               (t last-atom-sum))
                           )
                   (atom-sum last)
                   ))
                 )    
             )
     (cdr list))
    )

(defun twice(list)
	(cond 
		( (null list) nil )
		( t (cons (*(car list) 2) (twice(cdr list))) )
	) 
)

(defun mydelete (list n)
	(defun leave (list n)
		(if (= n 0)
			'()
			(cons (car list) (leave (cdr list) (- n 1)))
		)
	)
	
	(leave list(-(list-length list) n))
)


(defun divide (list length)
    (if list
        (if (zerop length) (cons nil (cons list nil))
            ((lambda (elem result)
                     (cons (cons elem (car result))
                           (cdr result)))
             (car list)
             (divide  (cdr list) (- length 1))))))

(defun drop-elm (a w)
  (when w (if (equal a (car w)) 
              (drop-elm a (cdr w))
              (cons (car w) (drop-elm a (cdr w))))))

(defun gluing (lst1 lst2)
  (mapcar 'list lst1 lst2))




(defmacro -----& (&rest tokens)
	`(let
		(
         (body-1 (car ',tokens))
         (operation (cadr ',tokens))
         (operation-2 (caddr ',tokens))
         (val Nil)
         )
	
		(cond
			((eq operation 'herbivicus) (setq val (increase body-1)))
			((eq operation 'reductio) (setq val (decrease body-1)))
            ((eq operation 'geminum-rovelio) (setq val (atom-sum body-1)))
            ((eq operation 'geminio) (setq val (twice body-1)))
            
            
            
            
			((eq operation-2 'obliviate)(setq val (mydelete body-1 operation)))
            ((eq operation-2 'diffindo) (setq val (divide body-1 operation)))
            ((eq operation 'avada-kedavra) (setq val (drop-elm body-1)))
            ((eq operation 'locomontor-mortis) (setq val (gluing lst1 lst2)))
			
		)
			 (print val)
		
	)
    
)
