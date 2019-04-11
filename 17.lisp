;Создайте предикат, порождающий всевозможные перестановки исходного множества

;Функция перестановки
(defun permutation (lst)
    
    (cond
        ( (null lst) nil)
        ( (null (cdr lst) ) (list lst))
        ;разделяет голову с хвостом
        ( t (add-elem-to-each-permutation (car lst) (permutation (cdr lst) ) ) )
    )
)

;Добавляет элемент во все перестановки
;>(1 в (2 3)(3 2))
;((1 2 3)(2 1 3)(2 3 1)(1 3 2)....
(defun add-elem-to-each-permutation (elem perm-lst)
    (cond
        ( (null perm-lst) nil)
        (t (append
                (insert-elem-to-each-pos elem (car perm-lst))
                (add-elem-to-each-permutation elem (cdr perm-lst) )  
) 
        )
     )
)   

;Вспомогательная функция вставки элементов в каждую позицию
;>(1 и (2 3) (3 2))
;((1 2 3)(2 1 3)(2 3 1))....
(defun insert-elem-to-each-pos-aux (elem lst1 lst2)
    (cond
        ( ( null lst2) nil)
        ( t ( (lambda (a)
                (cons (append (car a) (list elem) (cadr a))
                    
                      ( (lambda (x)
                        (insert-elem-to-each-pos-aux elem (car x) (cadr x)))
                    
                       a))
            )
                      
             ( (lambda (lst1 lst2)
                (list (append lst1 (list (car lst2))) (cdr lst2))
              
              ) lst1 lst2)))
    )
)

;Проверка на атомарность, если функция атомарна, то оборачиваем листом
(defun insert-elem-to-each-pos (elem lst)
    
    (cond
        ( (null lst) (list elem) )
        ( (atom lst) (insert-elem-to-each-pos elem (list lst) ) )
        ( t (cons 
             (cons elem lst) (insert-elem-to-each-pos-aux elem nil lst) ) ) 
    )
)



(print (permutation '(1 2 3)))
;>((1 2 3) (1 3 2) (2 1 3) (2 3 1) (3 1 2) (3 2 1))
