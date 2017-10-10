;; Auto-generated. Do not edit!


(when (boundp 'test_create_msg::robot_detail)
  (if (not (find-package "TEST_CREATE_MSG"))
    (make-package "TEST_CREATE_MSG"))
  (shadow 'robot_detail (find-package "TEST_CREATE_MSG")))
(unless (find-package "TEST_CREATE_MSG::ROBOT_DETAIL")
  (make-package "TEST_CREATE_MSG::ROBOT_DETAIL"))

(in-package "ROS")
;;//! \htmlinclude robot_detail.msg.html


(defclass test_create_msg::robot_detail
  :super ros::object
  :slots (_name _weight _noOfThruster ))

(defmethod test_create_msg::robot_detail
  (:init
   (&key
    ((:name __name) "")
    ((:weight __weight) 0.0)
    ((:noOfThruster __noOfThruster) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _weight (float __weight))
   (setq _noOfThruster (round __noOfThruster))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:noOfThruster
   (&optional __noOfThruster)
   (if __noOfThruster (setq _noOfThruster __noOfThruster)) _noOfThruster)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _weight
    4
    ;; int16 _noOfThruster
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _noOfThruster
       (write-word _noOfThruster s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _noOfThruster
     (setq _noOfThruster (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get test_create_msg::robot_detail :md5sum-) "48a1dd1c3cf1dd17dd60dbee884de278")
(setf (get test_create_msg::robot_detail :datatype-) "test_create_msg/robot_detail")
(setf (get test_create_msg::robot_detail :definition-)
      "string name
float32 weight
int16 noOfThruster

")



(provide :test_create_msg/robot_detail "48a1dd1c3cf1dd17dd60dbee884de278")


