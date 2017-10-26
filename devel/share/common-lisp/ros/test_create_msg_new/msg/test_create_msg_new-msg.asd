
(cl:in-package :asdf)

(defsystem "test_create_msg_new-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "robot_detail" :depends-on ("_package_robot_detail"))
    (:file "_package_robot_detail" :depends-on ("_package"))
    (:file "robot_detail" :depends-on ("_package_robot_detail"))
    (:file "_package_robot_detail" :depends-on ("_package"))
  ))