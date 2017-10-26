;; Auto-generated. Do not edit!


(when (boundp 'plus_minus_ser_cli::plus_ser)
  (if (not (find-package "PLUS_MINUS_SER_CLI"))
    (make-package "PLUS_MINUS_SER_CLI"))
  (shadow 'plus_ser (find-package "PLUS_MINUS_SER_CLI")))
(unless (find-package "PLUS_MINUS_SER_CLI::PLUS_SER")
  (make-package "PLUS_MINUS_SER_CLI::PLUS_SER"))
(unless (find-package "PLUS_MINUS_SER_CLI::PLUS_SERREQUEST")
  (make-package "PLUS_MINUS_SER_CLI::PLUS_SERREQUEST"))
(unless (find-package "PLUS_MINUS_SER_CLI::PLUS_SERRESPONSE")
  (make-package "PLUS_MINUS_SER_CLI::PLUS_SERRESPONSE"))

(in-package "ROS")





(defclass plus_minus_ser_cli::plus_serRequest
  :super ros::object
  :slots (_command _inp1 _inp2 ))

(defmethod plus_minus_ser_cli::plus_serRequest
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

(defclass plus_minus_ser_cli::plus_serResponse
  :super ros::object
  :slots (_result _eq ))

(defmethod plus_minus_ser_cli::plus_serResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:eq __eq) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _eq (string __eq))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:eq
   (&optional __eq)
   (if __eq (setq _eq __eq)) _eq)
  (:serialization-length
   ()
   (+
    ;; int16 _result
    2
    ;; string _eq
    4 (length _eq)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _result
       (write-word _result s)
     ;; string _eq
       (write-long (length _eq) s) (princ _eq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _result
     (setq _result (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _eq
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _eq (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass plus_minus_ser_cli::plus_ser
  :super ros::object
  :slots ())

(setf (get plus_minus_ser_cli::plus_ser :md5sum-) "924fbc742266a2d82feb8ba54d391a66")
(setf (get plus_minus_ser_cli::plus_ser :datatype-) "plus_minus_ser_cli/plus_ser")
(setf (get plus_minus_ser_cli::plus_ser :request) plus_minus_ser_cli::plus_serRequest)
(setf (get plus_minus_ser_cli::plus_ser :response) plus_minus_ser_cli::plus_serResponse)

(defmethod plus_minus_ser_cli::plus_serRequest
  (:response () (instance plus_minus_ser_cli::plus_serResponse :init)))

(setf (get plus_minus_ser_cli::plus_serRequest :md5sum-) "924fbc742266a2d82feb8ba54d391a66")
(setf (get plus_minus_ser_cli::plus_serRequest :datatype-) "plus_minus_ser_cli/plus_serRequest")
(setf (get plus_minus_ser_cli::plus_serRequest :definition-)
      "string command
int16 inp1
int16 inp2
---
int16 result
string eq

")

(setf (get plus_minus_ser_cli::plus_serResponse :md5sum-) "924fbc742266a2d82feb8ba54d391a66")
(setf (get plus_minus_ser_cli::plus_serResponse :datatype-) "plus_minus_ser_cli/plus_serResponse")
(setf (get plus_minus_ser_cli::plus_serResponse :definition-)
      "string command
int16 inp1
int16 inp2
---
int16 result
string eq

")



(provide :plus_minus_ser_cli/plus_ser "924fbc742266a2d82feb8ba54d391a66")


