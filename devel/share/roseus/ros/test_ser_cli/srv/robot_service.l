;; Auto-generated. Do not edit!


(when (boundp 'test_ser_cli::robot_service)
  (if (not (find-package "TEST_SER_CLI"))
    (make-package "TEST_SER_CLI"))
  (shadow 'robot_service (find-package "TEST_SER_CLI")))
(unless (find-package "TEST_SER_CLI::ROBOT_SERVICE")
  (make-package "TEST_SER_CLI::ROBOT_SERVICE"))
(unless (find-package "TEST_SER_CLI::ROBOT_SERVICEREQUEST")
  (make-package "TEST_SER_CLI::ROBOT_SERVICEREQUEST"))
(unless (find-package "TEST_SER_CLI::ROBOT_SERVICERESPONSE")
  (make-package "TEST_SER_CLI::ROBOT_SERVICERESPONSE"))

(in-package "ROS")



(if (not (find-package "TEST_CREATE_MSG_NEW"))
  (ros::roseus-add-msgs "test_create_msg_new"))


(defclass test_ser_cli::robot_serviceRequest
  :super ros::object
  :slots (_name ))

(defmethod test_ser_cli::robot_serviceRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test_ser_cli::robot_serviceResponse
  :super ros::object
  :slots (_response ))

(defmethod test_ser_cli::robot_serviceResponse
  (:init
   (&key
    ((:response __response) (instance test_create_msg_new::robot_detail :init))
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&rest __response)
   (if (keywordp (car __response))
       (send* _response __response)
     (progn
       (if __response (setq _response (car __response)))
       _response)))
  (:serialization-length
   ()
   (+
    ;; test_create_msg_new/robot_detail _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; test_create_msg_new/robot_detail _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; test_create_msg_new/robot_detail _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass test_ser_cli::robot_service
  :super ros::object
  :slots ())

(setf (get test_ser_cli::robot_service :md5sum-) "8800708100fda626f86c83189e112add")
(setf (get test_ser_cli::robot_service :datatype-) "test_ser_cli/robot_service")
(setf (get test_ser_cli::robot_service :request) test_ser_cli::robot_serviceRequest)
(setf (get test_ser_cli::robot_service :response) test_ser_cli::robot_serviceResponse)

(defmethod test_ser_cli::robot_serviceRequest
  (:response () (instance test_ser_cli::robot_serviceResponse :init)))

(setf (get test_ser_cli::robot_serviceRequest :md5sum-) "8800708100fda626f86c83189e112add")
(setf (get test_ser_cli::robot_serviceRequest :datatype-) "test_ser_cli/robot_serviceRequest")
(setf (get test_ser_cli::robot_serviceRequest :definition-)
      "string name
---
test_create_msg_new/robot_detail response


================================================================================
MSG: test_create_msg_new/robot_detail
string name
int16 year
int16 weight
")

(setf (get test_ser_cli::robot_serviceResponse :md5sum-) "8800708100fda626f86c83189e112add")
(setf (get test_ser_cli::robot_serviceResponse :datatype-) "test_ser_cli/robot_serviceResponse")
(setf (get test_ser_cli::robot_serviceResponse :definition-)
      "string name
---
test_create_msg_new/robot_detail response


================================================================================
MSG: test_create_msg_new/robot_detail
string name
int16 year
int16 weight
")



(provide :test_ser_cli/robot_service "8800708100fda626f86c83189e112add")


