
(cl:in-package :asdf)

(defsystem "plus_minus_servic-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :plus_minus_msg-msg
)
  :components ((:file "_package")
    (:file "kamtoob" :depends-on ("_package_kamtoob"))
    (:file "_package_kamtoob" :depends-on ("_package"))
  ))