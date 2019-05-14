;4. Определите в виде макроса форму (FIF тест отр нуль полож).

(defmacro fif (test negative zero positive)
	`(cond
		((< ,test 0) ,negative)
		((= ,test 0) ,zero)
		(T ,positive)
	)
)

(print (fif -1 'negative 'zero 'positive)) ; NEGATIVE 
(print (fif 0 'negative 'zero 'positive))  ; ZERO
(print (fif 2 'negative 'zero 'positive))  ; POSITIVE 
