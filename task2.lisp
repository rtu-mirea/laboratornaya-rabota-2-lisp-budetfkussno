;; task 2 reading file
(let ((in (open "something.txt" :if-does-not-exist nil)))
    (when in
        (loop for line = (read-line in nil)
    while line do (format t "~a~%" line))
    (close in)))