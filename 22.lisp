;���������� �������, ������� �������� ������ (� b �) � ��������� ��� ��
;������ (((�) b) �).


(defun reverse-levels (l)
     ((lambda (x) (setq last (cdr x))) l)
  (if (null last)
      l
      (list (reverse-levels last) (car l))))

	 
(print (reverse-levels '(5 7 89 4 5 79)))
