
(cl:in-package :asdf)

(defsystem "freefloating_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BodySetpoint" :depends-on ("_package_BodySetpoint"))
    (:file "_package_BodySetpoint" :depends-on ("_package"))
  ))