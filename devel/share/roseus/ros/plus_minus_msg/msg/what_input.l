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
  :slots (_comand _inp1 _inp2 ))

(defmethod plus_minus_msg::what_input
  (:init
   (&key
    ((:comand __comand) "")
    ((:inp1 __inp1) 0)
    ((:inp2 __inp2) 0)
    )
   (send-super :init)
   (setq _comand (string __comand))
   (setq _inp1 (round __inp1))
   (setq _inp2 (round __inp2))
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
  (:serialization-length
   ()
   (+
    ;; string _comand
    4 (length _comand)
    ;; int16 _inp1
    2
    ;; int16 _inp2
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
   ;;
   self)
  )

(setf (get plus_minus_msg::what_input :md5sum-) "f8ac08cd95c64326d8f6b9dae5d070dd")
(setf (get plus_minus_msg::what_input :datatype-) "plus_minus_msg/what_input")
(setf (get plus_minus_msg::what_input :definition-)
      "string comand
int16 inp1
int16 inp2

")



(provide :plus_minus_msg/what_input "f8ac08cd95c64326d8f6b9dae5d070dd")


