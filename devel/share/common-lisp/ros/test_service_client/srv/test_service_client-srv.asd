
(cl:in-package :asdf)

(defsystem "test_service_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "service_test" :depends-on ("_package_service_test"))
    (:file "_package_service_test" :depends-on ("_package"))
  ))