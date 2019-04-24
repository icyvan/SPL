; Определите FUNCALL через функционал APPLY

(defun myFuncall (f &rest args)
    (apply f args)
    )

(print (myFuncall '+ 1 2 3))
;=> 6
