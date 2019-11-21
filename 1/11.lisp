;Определите функцию, осуществляющую разделение исходного списка на два
;подсписка. В первый из них должно попасть указанное количество элементов
;с начала списка, во второй — оставшиеся элементы.

(defun divide (list length)
    (if list
        (if (zerop length) (cons nil (cons list nil))
            ((lambda (elem result)
                     (cons (cons elem (car result))
                           (cdr result)))
             (car list)
             (divide  (cdr list) (- length 1))))))

(print (divide '(a b c d e f g) 3))
(print (divide '(a b c d e f g) 0))
 
