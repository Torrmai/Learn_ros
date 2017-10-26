;; Auto-generated. Do not edit!


(when (boundp 'test_service_client::service_test)
  (if (not (find-package "TEST_SERVICE_CLIENT"))
    (make-package "TEST_SERVICE_CLIENT"))
  (shadow 'service_test (find-package "TEST_SERVICE_CLIENT")))
(unless (find-package "TEST_SERVICE_CLIENT::SERVICE_TEST")
  (make-package "TEST_SERVICE_CLIENT::SERVICE_TEST"))
(unless (find-package "TEST_SERVICE_CLIENT::SERVICE_TESTREQUEST")
  (make-package "TEST_SERVICE_CLIENT::SERVICE_TESTREQUEST"))
(unless (find-package "TEST_SERVICE_CLIENT::SERVICE_TESTRESPONSE")
  (make-package "TEST_SERVICE_CLIENT::SERVICE_TESTRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test_service_client::service_testRequest
  :super ros::object
  :slots (_requestNO _request _data ))

(defmethod test_service_client::service_testRequest
  (:init
   (&key
    ((:requestNO __requestNO) 0)
    ((:request __request) (instance std_msgs::String :init))
    ((:data __data) "")
    )
   (send-super :init)
   (setq _requestNO (round __requestNO))
   (setq _request __request)
   (setq _data (string __data))
   self)
  (:requestNO
   (&optional __requestNO)
   (if __requestNO (setq _requestNO __requestNO)) _requestNO)
  (:request
   (&rest __request)
   (if (keywordp (car __request))
       (send* _request __request)
     (progn
       (if __request (setq _request (car __request)))
       _request)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int16 _requestNO
    2
    ;; std_msgs/String _request
    (send _request :serialization-length)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _requestNO
       (write-word _requestNO s)
     ;; std_msgs/String _request
       (send _request :serialize s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _requestNO
     (setq _requestNO (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; std_msgs/String _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test_service_client::service_testResponse
  :super ros::object
  :slots (_responseNO _response _data ))

(defmethod test_service_client::service_testResponse
  (:init
   (&key
    ((:responseNO __responseNO) 0)
    ((:response __response) (instance std_msgs::String :init))
    ((:data __data) "")
    )
   (send-super :init)
   (setq _responseNO (round __responseNO))
   (setq _response __response)
   (setq _data (string __data))
   self)
  (:responseNO
   (&optional __responseNO)
   (if __responseNO (setq _responseNO __responseNO)) _responseNO)
  (:response
   (&rest __response)
   (if (keywordp (car __response))
       (send* _response __response)
     (progn
       (if __response (setq _response (car __response)))
       _response)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int16 _responseNO
    2
    ;; std_msgs/String _response
    (send _response :serialization-length)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _responseNO
       (write-word _responseNO s)
     ;; std_msgs/String _response
       (send _response :serialize s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _responseNO
     (setq _responseNO (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; std_msgs/String _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test_service_client::service_test
  :super ros::object
  :slots ())

(setf (get test_service_client::service_test :md5sum-) "834f928ec74381cd9b270dead49151fa")
(setf (get test_service_client::service_test :datatype-) "test_service_client/service_test")
(setf (get test_service_client::service_test :request) test_service_client::service_testRequest)
(setf (get test_service_client::service_test :response) test_service_client::service_testResponse)

(defmethod test_service_client::service_testRequest
  (:response () (instance test_service_client::service_testResponse :init)))

(setf (get test_service_client::service_testRequest :md5sum-) "834f928ec74381cd9b270dead49151fa")
(setf (get test_service_client::service_testRequest :datatype-) "test_service_client/service_testRequest")
(setf (get test_service_client::service_testRequest :definition-)
      "int16 requestNO
std_msgs/String request
string data

================================================================================
MSG: std_msgs/String
string data
---

int16 responseNO
std_msgs/String response
string data

================================================================================
MSG: std_msgs/String
string data
")

(setf (get test_service_client::service_testResponse :md5sum-) "834f928ec74381cd9b270dead49151fa")
(setf (get test_service_client::service_testResponse :datatype-) "test_service_client/service_testResponse")
(setf (get test_service_client::service_testResponse :definition-)
      "int16 requestNO
std_msgs/String request
string data

================================================================================
MSG: std_msgs/String
string data
---

int16 responseNO
std_msgs/String response
string data

================================================================================
MSG: std_msgs/String
string data
")



(provide :test_service_client/service_test "834f928ec74381cd9b270dead49151fa")


