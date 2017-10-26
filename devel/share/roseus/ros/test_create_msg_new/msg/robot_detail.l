;; Auto-generated. Do not edit!


(when (boundp 'test_create_msg_new::robot_detail)
  (if (not (find-package "TEST_CREATE_MSG_NEW"))
    (make-package "TEST_CREATE_MSG_NEW"))
  (shadow 'robot_detail (find-package "TEST_CREATE_MSG_NEW")))
(unless (find-package "TEST_CREATE_MSG_NEW::ROBOT_DETAIL")
  (make-package "TEST_CREATE_MSG_NEW::ROBOT_DETAIL"))

(in-package "ROS")
;;//! \htmlinclude robot_detail.msg.html


(defclass test_create_msg_new::robot_detail
  :super ros::object
  :slots (_name _year _weight ))

(defmethod test_create_msg_new::robot_detail
  (:init
   (&key
    ((:name __name) "")
    ((:year __year) 0)
    ((:weight __weight) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _year (round __year))
   (setq _weight (round __weight))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int16 _year
    2
    ;; int16 _weight
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int16 _year
       (write-word _year s)
     ;; int16 _weight
       (write-word _weight s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _year
     (setq _year (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _weight
     (setq _weight (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get test_create_msg_new::robot_detail :md5sum-) "2e97aeb8e4a1494698359be495347896")
(setf (get test_create_msg_new::robot_detail :datatype-) "test_create_msg_new/robot_detail")
(setf (get test_create_msg_new::robot_detail :definition-)
      "string name
int16 year
int16 weight

")



(provide :test_create_msg_new/robot_detail "2e97aeb8e4a1494698359be495347896")


