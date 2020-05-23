(defun output_file (path)
    (let ((in (open path :if-does-not-exist nil)))
        (when in
            (loop for line = (read-line in nil)
         while line do (format t "~a~%" line))
            (close in)
         )
     )
)

(defun path() `("./something.txt"))

(format t "~a~%" (path))

(set `something_path (path))

(output_file something_path)
