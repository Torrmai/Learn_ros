;; Auto-generated. Do not edit!


(when (boundp 's_c_plusminus::plusminus_serv)
  (if (not (find-package "S_C_PLUSMINUS"))
    (make-package "S_C_PLUSMINUS"))
  (shadow 'plusminus_serv (find-package "S_C_PLUSMINUS")))
(unless (find-package "S_C_PLUSMINUS::PLUSMINUS_SERV")
  (make-package "S_C_PLUSMINUS::PLUSMINUS_SERV"))
(unless (find-package "S_C_PLUSMINUS::PLUSMINUS_SERVREQUEST")
  (make-package "S_C_PLUSMINUS::PLUSMINUS_SERVREQUEST"))
(unless (find-package "S_C_PLUSMINUS::PLUSMINUS_SERVRESPONSE")
  (make-package "S_C_PLUSMINUS::PLUSMINUS_SERVRESPONSE"))

(in-package "ROS")





(defclass s_c_plusminus::plusminus_servRequest
  :super ros::object
  :slots (_command _inp1 _inp2 ))

(defmethod s_c_plusminus::plusminus_servRequest
  (:init
   (&key
    ((:command __command) "")
    ((:inp1 __inp1) 0)
    ((:inp2 __inp2) 0)
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _inp1 (round __inp1))
   (setq _inp2 (round __inp2))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:inp1
   (&optional __inp1)
   (if __inp1 (setq _inp1 __inp1)) _inp1)
  (:inp2
   (&optional __inp2)
   (if __inp2 (setq _inp2 __inp2)) _inp2)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; int16 _inp1
    2
    ;; int16 _inp2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; int16 _inp1
       (write-word _inp1 s)
     ;; int16 _inp2
       (write-word _inp2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _inp1
     (setq _inp1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _inp2
     (setq _inp2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass s_c_plusminus::plusminus_servResponse
  :super ros::object
  :slots (_response ))

(defmethod s_c_plusminus::plusminus_servResponse
  (:init
   (&key
    ((:response __response) (instance s_c_plusminus::output :init))
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
    ;; s_c_plusminus/output _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; s_c_plusminus/output _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; s_c_plusminus/output _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass s_c_plusminus::plusminus_serv
  :super ros::object
  :slots ())

(setf (get s_c_plusminus::plusminus_serv :md5sum-) "30760a2ae78bf5e8cc7c7a4386966418")
(setf (get s_c_plusminus::plusminus_serv :datatype-) "s_c_plusminus/plusminus_serv")
(setf (get s_c_plusminus::plusminus_serv :request) s_c_plusminus::plusminus_servRequest)
(setf (get s_c_plusminus::plusminus_serv :response) s_c_plusminus::plusminus_servResponse)

(defmethod s_c_plusminus::plusminus_servRequest
  (:response () (instance s_c_plusminus::plusminus_servResponse :init)))

(setf (get s_c_plusminus::plusminus_servRequest :md5sum-) "30760a2ae78bf5e8cc7c7a4386966418")
(setf (get s_c_plusminus::plusminus_servRequest :datatype-) "s_c_plusminus/plusminus_servRequest")
(setf (get s_c_plusminus::plusminus_servRequest :definition-)
      "string command
int16 inp1
int16 inp2
---
s_c_plusminus/output response


================================================================================
MSG: s_c_plusminus/output
string equation
int16 result
")

(setf (get s_c_plusminus::plusminus_servResponse :md5sum-) "30760a2ae78bf5e8cc7c7a4386966418")
(setf (get s_c_plusminus::plusminus_servResponse :datatype-) "s_c_plusminus/plusminus_servResponse")
(setf (get s_c_plusminus::plusminus_servResponse :definition-)
      "string command
int16 inp1
int16 inp2
---
s_c_plusminus/output response


================================================================================
MSG: s_c_plusminus/output
string equation
int16 result
")



(provide :s_c_plusminus/plusminus_serv "30760a2ae78bf5e8cc7c7a4386966418")


