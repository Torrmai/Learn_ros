
(cl:in-package :asdf)

(defsystem "plus_minus_ser_cli-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "plus_ser" :depends-on ("_package_plus_ser"))
    (:file "_package_plus_ser" :depends-on ("_package"))
  ))