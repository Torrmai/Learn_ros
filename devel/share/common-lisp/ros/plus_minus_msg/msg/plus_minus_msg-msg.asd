
(cl:in-package :asdf)

(defsystem "plus_minus_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "what_input" :depends-on ("_package_what_input"))
    (:file "_package_what_input" :depends-on ("_package"))
    (:file "what_input" :depends-on ("_package_what_input"))
    (:file "_package_what_input" :depends-on ("_package"))
  ))