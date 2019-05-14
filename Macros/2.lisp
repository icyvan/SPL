2. Определите макрос (POP стек), который читает из стека верхний элемент и
меняет значение переменной стека

(defmacro my-pop (stack)
	`(let ((first Nil))
		(setq first (car ,stack))
		(setq ,stack (cdr ,stack))
		first
	)
)

(setq gen `(a b c d))

(print (my-pop gen)) ; A
(print (my-pop gen)) ; B
(print (my-pop gen)) ; C
(print (my-pop gen)) ; D
