(asdf:load-system :cffi)

(defpackage :mc
 (:use :common-lisp
       :cffi)
 (:export myfunc))

(in-package :mc)

(define-foreign-library libcurl
 (:unix (:or "/usr/lib64/libcurl.so.4"))
 (t (:default "/usr/lib64/libcurl.so.4")))

(use-foreign-library libcurl)

(defcfun ("curl_global_init" myfunc) :int
 (flags :long))

