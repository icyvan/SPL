;Напишите предикат (ИМЕЕТ-СВОЙСТВО символ свойство), который 
;проверяет, обладает ли символ данным свойством.

(defun property (x y)
    (if (eq (get x y) nil ) nil t)
    )

(setf (get 'books 'title) '(Looking for Alaska))
(setf (get 'books 'author) '(John Green))
(setf (get 'books 'publisher) '(Dutton Books))

(print (property 'books 'year))
(print (property 'books 'author))
(print (property 'books 'publisher))
