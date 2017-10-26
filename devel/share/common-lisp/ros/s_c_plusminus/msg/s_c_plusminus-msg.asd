
(cl:in-package :asdf)

(defsystem "s_c_plusminus-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "output" :depends-on ("_package_output"))
    (:file "_package_output" :depends-on ("_package"))
    (:file "output" :depends-on ("_package_output"))
    (:file "_package_output" :depends-on ("_package"))
  ))