; Auto-generated. Do not edit!


(cl:in-package s_c_plusminus-msg)


;//! \htmlinclude output.msg.html

(cl:defclass <output> (roslisp-msg-protocol:ros-message)
  ((equation
    :reader equation
    :initarg :equation
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass output (<output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name s_c_plusminus-msg:<output> is deprecated: use s_c_plusminus-msg:output instead.")))

(cl:ensure-generic-function 'equation-val :lambda-list '(m))
(cl:defmethod equation-val ((m <output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader s_c_plusminus-msg:equation-val is deprecated.  Use s_c_plusminus-msg:equation instead.")
  (equation m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader s_c_plusminus-msg:result-val is deprecated.  Use s_c_plusminus-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <output>) ostream)
  "Serializes a message object of type '<output>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'equation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'equation))
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <output>) istream)
  "Deserializes a message object of type '<output>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'equation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'equation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<output>)))
  "Returns string type for a message object of type '<output>"
  "s_c_plusminus/output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'output)))
  "Returns string type for a message object of type 'output"
  "s_c_plusminus/output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<output>)))
  "Returns md5sum for a message object of type '<output>"
  "9bab23f51d169221c4e582476e5ea309")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'output)))
  "Returns md5sum for a message object of type 'output"
  "9bab23f51d169221c4e582476e5ea309")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<output>)))
  "Returns full string definition for message of type '<output>"
  (cl:format cl:nil "string equation~%int16 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'output)))
  "Returns full string definition for message of type 'output"
  (cl:format cl:nil "string equation~%int16 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <output>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'equation))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <output>))
  "Converts a ROS message object to a list"
  (cl:list 'output
    (cl:cons ':equation (equation msg))
    (cl:cons ':result (result msg))
))
