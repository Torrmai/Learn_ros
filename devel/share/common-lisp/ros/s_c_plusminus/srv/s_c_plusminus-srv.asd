
(cl:in-package :asdf)

(defsystem "s_c_plusminus-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :s_c_plusminus-msg
)
  :components ((:file "_package")
    (:file "plusminus_serv" :depends-on ("_package_plusminus_serv"))
    (:file "_package_plusminus_serv" :depends-on ("_package"))
  ))