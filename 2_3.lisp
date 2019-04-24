;Определите функционал (APL-APPLY f x), который применяет каждую функцию fi списка
;(f1 f2 ... fn)
;к соответствующему элементу списка
;x = (x1 x2 ... xn)
;и возвращает список, сформированный из результатов

(defun apl-apply (f x)
	(mapcar 'funcall f x)
    )

(defun to-add-1 (num)
	(+ num 1)
    )

(defun multiply-2 (num)
	(* num 2)
    )

(defun subtract-3 (num)
	(- num 3)
    )

(print (apl-apply '(to-add-1 multiply-2 subtract-3) '(1 5 2))) ; (2 10 -1)
