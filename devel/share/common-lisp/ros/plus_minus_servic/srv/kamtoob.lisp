; Auto-generated. Do not edit!


(cl:in-package plus_minus_servic-srv)


;//! \htmlinclude kamtoob-request.msg.html

(cl:defclass <kamtoob-request> (roslisp-msg-protocol:ros-message)
  ((com
    :reader com
    :initarg :com
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
    :initform 0))
)

(cl:defclass kamtoob-request (<kamtoob-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kamtoob-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kamtoob-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plus_minus_servic-srv:<kamtoob-request> is deprecated: use plus_minus_servic-srv:kamtoob-request instead.")))

(cl:ensure-generic-function 'com-val :lambda-list '(m))
(cl:defmethod com-val ((m <kamtoob-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_servic-srv:com-val is deprecated.  Use plus_minus_servic-srv:com instead.")
  (com m))

(cl:ensure-generic-function 'inp1-val :lambda-list '(m))
(cl:defmethod inp1-val ((m <kamtoob-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_servic-srv:inp1-val is deprecated.  Use plus_minus_servic-srv:inp1 instead.")
  (inp1 m))

(cl:ensure-generic-function 'inp2-val :lambda-list '(m))
(cl:defmethod inp2-val ((m <kamtoob-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_servic-srv:inp2-val is deprecated.  Use plus_minus_servic-srv:inp2 instead.")
  (inp2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kamtoob-request>) ostream)
  "Serializes a message object of type '<kamtoob-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'com))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'com))
  (cl:let* ((signed (cl:slot-value msg 'inp1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'inp2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kamtoob-request>) istream)
  "Deserializes a message object of type '<kamtoob-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'com) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'com) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inp1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inp2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kamtoob-request>)))
  "Returns string type for a service object of type '<kamtoob-request>"
  "plus_minus_servic/kamtoobRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kamtoob-request)))
  "Returns string type for a service object of type 'kamtoob-request"
  "plus_minus_servic/kamtoobRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kamtoob-request>)))
  "Returns md5sum for a message object of type '<kamtoob-request>"
  "b82aa0d59edba103ba71ad6a815f7270")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kamtoob-request)))
  "Returns md5sum for a message object of type 'kamtoob-request"
  "b82aa0d59edba103ba71ad6a815f7270")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kamtoob-request>)))
  "Returns full string definition for message of type '<kamtoob-request>"
  (cl:format cl:nil "string com~%int16 inp1~%int16 inp2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kamtoob-request)))
  "Returns full string definition for message of type 'kamtoob-request"
  (cl:format cl:nil "string com~%int16 inp1~%int16 inp2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kamtoob-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'com))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kamtoob-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kamtoob-request
    (cl:cons ':com (com msg))
    (cl:cons ':inp1 (inp1 msg))
    (cl:cons ':inp2 (inp2 msg))
))
;//! \htmlinclude kamtoob-response.msg.html

(cl:defclass <kamtoob-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type plus_minus_msg-msg:what_input
    :initform (cl:make-instance 'plus_minus_msg-msg:what_input)))
)

(cl:defclass kamtoob-response (<kamtoob-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kamtoob-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kamtoob-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plus_minus_servic-srv:<kamtoob-response> is deprecated: use plus_minus_servic-srv:kamtoob-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <kamtoob-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_servic-srv:response-val is deprecated.  Use plus_minus_servic-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kamtoob-response>) ostream)
  "Serializes a message object of type '<kamtoob-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kamtoob-response>) istream)
  "Deserializes a message object of type '<kamtoob-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kamtoob-response>)))
  "Returns string type for a service object of type '<kamtoob-response>"
  "plus_minus_servic/kamtoobResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kamtoob-response)))
  "Returns string type for a service object of type 'kamtoob-response"
  "plus_minus_servic/kamtoobResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kamtoob-response>)))
  "Returns md5sum for a message object of type '<kamtoob-response>"
  "b82aa0d59edba103ba71ad6a815f7270")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kamtoob-response)))
  "Returns md5sum for a message object of type 'kamtoob-response"
  "b82aa0d59edba103ba71ad6a815f7270")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kamtoob-response>)))
  "Returns full string definition for message of type '<kamtoob-response>"
  (cl:format cl:nil "plus_minus_msg/what_input response~%~%~%================================================================================~%MSG: plus_minus_msg/what_input~%string comand~%int16 inp1~%int16 inp2~%int16 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kamtoob-response)))
  "Returns full string definition for message of type 'kamtoob-response"
  (cl:format cl:nil "plus_minus_msg/what_input response~%~%~%================================================================================~%MSG: plus_minus_msg/what_input~%string comand~%int16 inp1~%int16 inp2~%int16 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kamtoob-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kamtoob-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kamtoob-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kamtoob)))
  'kamtoob-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kamtoob)))
  'kamtoob-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kamtoob)))
  "Returns string type for a service object of type '<kamtoob>"
  "plus_minus_servic/kamtoob")