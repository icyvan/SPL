;Напишите предикат (ИМЕЕТ-СВОЙСТВО символ свойство), который 
;проверяет, обладает ли символ данным свойством.

(defun property (x y)
    (if (eq (get x y) nil ) nil t)
    )

(setf (get 'books 'title) '(Looking for Alaska))
(setf (get 'books 'author) '(John Green))
(setf (get 'books 'publisher) '(Dutton Books))
(setf (get 'books 'two-author) '(nil))

(print (property 'books 'year))
(print (property 'books 'author))
(print (property 'books 'publisher))
(print (property 'books 'two-author))
