;; insert task 1.1
(defun insert (value list index)
  (cond ((= index 0) (push value list))
        ((> index (length list)) nil)
        (t
          (let ((start (subseq list 0 index))
                (end (subseq list index (position (last list) list))))
            (append start (list value) end)))))

(insert 228 (list 14 88 22 17 32 84 56 22) 2)

;; remove task 1.2 (По значению)
(remove-nth 17 (list 14 88 22 17 32 84 56 22))

;; remove task 1.2 (По индексу)
(defun index_removing (index list)
  (cond ((null list) nil)
  ((zerop index) (cdr list))
  (t (cons (car list) (index_removing (1- index) (cdr list))))))
(index_removing 5 (list 14 88 22 17 32 84 56 22))

;; searching task 1.3
(defun searching (value list &optional (position 0) (result nil))
    (if (null list) 
    (if result (reverse result) 0)
    (if (equal value (car list))
        (searching value (cdr list) (+ position 1) (cons position result))
        (searching value (cdr list) (+ position 1) result))))

(searching 17 (list 14 88 22 17 32 84 56  17 22))
