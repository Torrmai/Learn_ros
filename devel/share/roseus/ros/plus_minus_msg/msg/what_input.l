;; Auto-generated. Do not edit!


(when (boundp 'plus_minus_msg::what_input)
  (if (not (find-package "PLUS_MINUS_MSG"))
    (make-package "PLUS_MINUS_MSG"))
  (shadow 'what_input (find-package "PLUS_MINUS_MSG")))
(unless (find-package "PLUS_MINUS_MSG::WHAT_INPUT")
  (make-package "PLUS_MINUS_MSG::WHAT_INPUT"))

(in-package "ROS")
;;//! \htmlinclude what_input.msg.html


(defclass plus_minus_msg::what_input
  :super ros::object
  :slots (_comand _inp1 _inp2 _result ))

(defmethod plus_minus_msg::what_input
  (:init
   (&key
    ((:comand __comand) "")
    ((:inp1 __inp1) 0)
    ((:inp2 __inp2) 0)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _comand (string __comand))
   (setq _inp1 (round __inp1))
   (setq _inp2 (round __inp2))
   (setq _result (round __result))
   self)
  (:comand
   (&optional __comand)
   (if __comand (setq _comand __comand)) _comand)
  (:inp1
   (&optional __inp1)
   (if __inp1 (setq _inp1 __inp1)) _inp1)
  (:inp2
   (&optional __inp2)
   (if __inp2 (setq _inp2 __inp2)) _inp2)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _comand
    4 (length _comand)
    ;; int16 _inp1
    2
    ;; int16 _inp2
    2
    ;; int16 _result
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _comand
       (write-long (length _comand) s) (princ _comand s)
     ;; int16 _inp1
       (write-word _inp1 s)
     ;; int16 _inp2
       (write-word _inp2 s)
     ;; int16 _result
       (write-word _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _comand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _comand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _inp1
     (setq _inp1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _inp2
     (setq _inp2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _result
     (setq _result (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get plus_minus_msg::what_input :md5sum-) "f2076654e2eb2259bf9ab3a7dff817cd")
(setf (get plus_minus_msg::what_input :datatype-) "plus_minus_msg/what_input")
(setf (get plus_minus_msg::what_input :definition-)
      "string comand
int16 inp1
int16 inp2
int16 result

")



(provide :plus_minus_msg/what_input "f2076654e2eb2259bf9ab3a7dff817cd")


