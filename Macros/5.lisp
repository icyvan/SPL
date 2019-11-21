5. Определите в виде макроса форму (REPEAT e UNTIL p) паскалевского типа.

(defmacro repeat (e until p)
	`(if ,p NIL
		(progn ,e (repeat ,e until ,p))
	)
)

(setq i 0)
(repeat
	(progn
		(print i)
		(setq i (+ i 1))
	)
	until (= i 8)
)

;0 
;1 
;2 
;3 
;4 
;5 
;6 
;7 
