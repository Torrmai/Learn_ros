;; Auto-generated. Do not edit!


(when (boundp 'plus_minus_servic::kamtoob)
  (if (not (find-package "PLUS_MINUS_SERVIC"))
    (make-package "PLUS_MINUS_SERVIC"))
  (shadow 'kamtoob (find-package "PLUS_MINUS_SERVIC")))
(unless (find-package "PLUS_MINUS_SERVIC::KAMTOOB")
  (make-package "PLUS_MINUS_SERVIC::KAMTOOB"))
(unless (find-package "PLUS_MINUS_SERVIC::KAMTOOBREQUEST")
  (make-package "PLUS_MINUS_SERVIC::KAMTOOBREQUEST"))
(unless (find-package "PLUS_MINUS_SERVIC::KAMTOOBRESPONSE")
  (make-package "PLUS_MINUS_SERVIC::KAMTOOBRESPONSE"))

(in-package "ROS")



(if (not (find-package "PLUS_MINUS_MSG"))
  (ros::roseus-add-msgs "plus_minus_msg"))


(defclass plus_minus_servic::kamtoobRequest
  :super ros::object
  :slots (_com _inp1 _inp2 ))

(defmethod plus_minus_servic::kamtoobRequest
  (:init
   (&key
    ((:com __com) "")
    ((:inp1 __inp1) 0)
    ((:inp2 __inp2) 0)
    )
   (send-super :init)
   (setq _com (string __com))
   (setq _inp1 (round __inp1))
   (setq _inp2 (round __inp2))
   self)
  (:com
   (&optional __com)
   (if __com (setq _com __com)) _com)
  (:inp1
   (&optional __inp1)
   (if __inp1 (setq _inp1 __inp1)) _inp1)
  (:inp2
   (&optional __inp2)
   (if __inp2 (setq _inp2 __inp2)) _inp2)
  (:serialization-length
   ()
   (+
    ;; string _com
    4 (length _com)
    ;; int16 _inp1
    2
    ;; int16 _inp2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _com
       (write-long (length _com) s) (princ _com s)
     ;; int16 _inp1
       (write-word _inp1 s)
     ;; int16 _inp2
       (write-word _inp2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _com
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _com (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _inp1
     (setq _inp1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _inp2
     (setq _inp2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass plus_minus_servic::kamtoobResponse
  :super ros::object
  :slots (_response ))

(defmethod plus_minus_servic::kamtoobResponse
  (:init
   (&key
    ((:response __response) (instance plus_minus_msg::what_input :init))
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
    ;; plus_minus_msg/what_input _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; plus_minus_msg/what_input _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; plus_minus_msg/what_input _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass plus_minus_servic::kamtoob
  :super ros::object
  :slots ())

(setf (get plus_minus_servic::kamtoob :md5sum-) "b82aa0d59edba103ba71ad6a815f7270")
(setf (get plus_minus_servic::kamtoob :datatype-) "plus_minus_servic/kamtoob")
(setf (get plus_minus_servic::kamtoob :request) plus_minus_servic::kamtoobRequest)
(setf (get plus_minus_servic::kamtoob :response) plus_minus_servic::kamtoobResponse)

(defmethod plus_minus_servic::kamtoobRequest
  (:response () (instance plus_minus_servic::kamtoobResponse :init)))

(setf (get plus_minus_servic::kamtoobRequest :md5sum-) "b82aa0d59edba103ba71ad6a815f7270")
(setf (get plus_minus_servic::kamtoobRequest :datatype-) "plus_minus_servic/kamtoobRequest")
(setf (get plus_minus_servic::kamtoobRequest :definition-)
      "string com
int16 inp1
int16 inp2
---
plus_minus_msg/what_input response


================================================================================
MSG: plus_minus_msg/what_input
string comand
int16 inp1
int16 inp2
int16 result
")

(setf (get plus_minus_servic::kamtoobResponse :md5sum-) "b82aa0d59edba103ba71ad6a815f7270")
(setf (get plus_minus_servic::kamtoobResponse :datatype-) "plus_minus_servic/kamtoobResponse")
(setf (get plus_minus_servic::kamtoobResponse :definition-)
      "string com
int16 inp1
int16 inp2
---
plus_minus_msg/what_input response


================================================================================
MSG: plus_minus_msg/what_input
string comand
int16 inp1
int16 inp2
int16 result
")



(provide :plus_minus_servic/kamtoob "b82aa0d59edba103ba71ad6a815f7270")


