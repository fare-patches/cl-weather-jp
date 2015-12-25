(in-package :cl-user)
(defpackage cl-weather-jp.util
  (:use #:cl)
  (:export #:aget))
(in-package :cl-weather-jp.util)

(defun aget (alist key &key (test #'string=))
  (let ((record (assoc key alist :test test)))
    (if record
        (values (cdr record) t)
        (values nil nil))))

(defun (setf aget) (val alist key &key (test #'string=))
  (let ((record (assoc key alist :test test)))
    (if record
        (rplacd record val)
        (rplacd (last alist) `((,key . ,val)))))
  val)
