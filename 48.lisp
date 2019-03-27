;Напишите предикат (ИМЕЕТ-СВОЙСТВО символ свойство), который 
;проверяет, обладает ли символ данным свойством.

(setf (get 'books 'title) '(Looking for Alaska))
(setf (get 'books 'author) '(John Green))
(setf (get 'books 'publisher) '(Dutton Books))

(print (get 'books 'year))
(print (get 'books 'author))
(print (get 'books 'publisher
