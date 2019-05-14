;1. Определите макрос, который возвращает свой вызов.

(defmacro self-call (&rest x)
  `(quote (self-call ,x)))

(print (self-call a b (+ a b)))
;=>(SELF-CALL (A B (+ A B))) 
