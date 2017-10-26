
(cl:in-package :asdf)

(defsystem "test_ser_cli-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :test_create_msg_new-msg
)
  :components ((:file "_package")
    (:file "robot_service" :depends-on ("_package_robot_service"))
    (:file "_package_robot_service" :depends-on ("_package"))
  ))