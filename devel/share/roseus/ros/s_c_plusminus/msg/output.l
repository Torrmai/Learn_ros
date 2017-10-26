;; Auto-generated. Do not edit!


(when (boundp 's_c_plusminus::output)
  (if (not (find-package "S_C_PLUSMINUS"))
    (make-package "S_C_PLUSMINUS"))
  (shadow 'output (find-package "S_C_PLUSMINUS")))
(unless (find-package "S_C_PLUSMINUS::OUTPUT")
  (make-package "S_C_PLUSMINUS::OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude output.msg.html


(defclass s_c_plusminus::output
  :super ros::object
  :slots (_equation _result ))

(defmethod s_c_plusminus::output
  (:init
   (&key
    ((:equation __equation) "")
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _equation (string __equation))
   (setq _result (round __result))
   self)
  (:equation
   (&optional __equation)
   (if __equation (setq _equation __equation)) _equation)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _equation
    4 (length _equation)
    ;; int16 _result
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _equation
       (write-long (length _equation) s) (princ _equation s)
     ;; int16 _result
       (write-word _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _equation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _equation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _result
     (setq _result (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get s_c_plusminus::output :md5sum-) "9bab23f51d169221c4e582476e5ea309")
(setf (get s_c_plusminus::output :datatype-) "s_c_plusminus/output")
(setf (get s_c_plusminus::output :definition-)
      "string equation
int16 result

")



(provide :s_c_plusminus/output "9bab23f51d169221c4e582476e5ea309")


