; Auto-generated. Do not edit!


(cl:in-package plus_minus_msg-msg)


;//! \htmlinclude what_input.msg.html

(cl:defclass <what_input> (roslisp-msg-protocol:ros-message)
  ((comand
    :reader comand
    :initarg :comand
    :type cl:string
    :initform "")
   (inp1
    :reader inp1
    :initarg :inp1
    :type cl:fixnum
    :initform 0)
   (inp2
    :reader inp2
    :initarg :inp2
    :type cl:fixnum
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass what_input (<what_input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <what_input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'what_input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plus_minus_msg-msg:<what_input> is deprecated: use plus_minus_msg-msg:what_input instead.")))

(cl:ensure-generic-function 'comand-val :lambda-list '(m))
(cl:defmethod comand-val ((m <what_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_msg-msg:comand-val is deprecated.  Use plus_minus_msg-msg:comand instead.")
  (comand m))

(cl:ensure-generic-function 'inp1-val :lambda-list '(m))
(cl:defmethod inp1-val ((m <what_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_msg-msg:inp1-val is deprecated.  Use plus_minus_msg-msg:inp1 instead.")
  (inp1 m))

(cl:ensure-generic-function 'inp2-val :lambda-list '(m))
(cl:defmethod inp2-val ((m <what_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_msg-msg:inp2-val is deprecated.  Use plus_minus_msg-msg:inp2 instead.")
  (inp2 m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <what_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_msg-msg:result-val is deprecated.  Use plus_minus_msg-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <what_input>) ostream)
  "Serializes a message object of type '<what_input>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comand))
  (cl:let* ((signed (cl:slot-value msg 'inp1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'inp2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <what_input>) istream)
  "Deserializes a message object of type '<what_input>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'comand) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'comand) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inp1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inp2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<what_input>)))
  "Returns string type for a message object of type '<what_input>"
  "plus_minus_msg/what_input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'what_input)))
  "Returns string type for a message object of type 'what_input"
  "plus_minus_msg/what_input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<what_input>)))
  "Returns md5sum for a message object of type '<what_input>"
  "f2076654e2eb2259bf9ab3a7dff817cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'what_input)))
  "Returns md5sum for a message object of type 'what_input"
  "f2076654e2eb2259bf9ab3a7dff817cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<what_input>)))
  "Returns full string definition for message of type '<what_input>"
  (cl:format cl:nil "string comand~%int16 inp1~%int16 inp2~%int16 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'what_input)))
  "Returns full string definition for message of type 'what_input"
  (cl:format cl:nil "string comand~%int16 inp1~%int16 inp2~%int16 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <what_input>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'comand))
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <what_input>))
  "Converts a ROS message object to a list"
  (cl:list 'what_input
    (cl:cons ':comand (comand msg))
    (cl:cons ':inp1 (inp1 msg))
    (cl:cons ':inp2 (inp2 msg))
    (cl:cons ':result (result msg))
))
