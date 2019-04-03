; Создайте предикат, порождающий всевозможные перестановки исходного множества.

(defun permutation (lst)
    (cond
        ((null lst) nil)
        ((null(cdr lst))(list lst))
        (t (odd-elem-to-each-permutation
            (car lst)
            (permutation (cdr lst)))
    )
)

(print (permutation '(f d g)))
