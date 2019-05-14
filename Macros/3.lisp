;3. Определите лисповскую форму (IF условие p q) в виде макроса

(defmacro myif (condition p q)
	`(if ,condition ,p ,q)
)

(print (myif (= 1 1) 't 'nil)) ; => T
(print (myif (> 1 2) 't 'nil)) ; => NIL
