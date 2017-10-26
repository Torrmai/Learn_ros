; Auto-generated. Do not edit!


(cl:in-package s_c_plusminus-srv)


;//! \htmlinclude plusminus_serv-request.msg.html

(cl:defclass <plusminus_serv-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
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

(cl:defclass plusminus_serv-request (<plusminus_serv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plusminus_serv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plusminus_serv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name s_c_plusminus-srv:<plusminus_serv-request> is deprecated: use s_c_plusminus-srv:plusminus_serv-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <plusminus_serv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader s_c_plusminus-srv:command-val is deprecated.  Use s_c_plusminus-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'inp1-val :lambda-list '(m))
(cl:defmethod inp1-val ((m <plusminus_serv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader s_c_plusminus-srv:inp1-val is deprecated.  Use s_c_plusminus-srv:inp1 instead.")
  (inp1 m))

(cl:ensure-generic-function 'inp2-val :lambda-list '(m))
(cl:defmethod inp2-val ((m <plusminus_serv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader s_c_plusminus-srv:inp2-val is deprecated.  Use s_c_plusminus-srv:inp2 instead.")
  (inp2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plusminus_serv-request>) ostream)
  "Serializes a message object of type '<plusminus_serv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let* ((signed (cl:slot-value msg 'inp1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'inp2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plusminus_serv-request>) istream)
  "Deserializes a message object of type '<plusminus_serv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plusminus_serv-request>)))
  "Returns string type for a service object of type '<plusminus_serv-request>"
  "s_c_plusminus/plusminus_servRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plusminus_serv-request)))
  "Returns string type for a service object of type 'plusminus_serv-request"
  "s_c_plusminus/plusminus_servRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plusminus_serv-request>)))
  "Returns md5sum for a message object of type '<plusminus_serv-request>"
  "30760a2ae78bf5e8cc7c7a4386966418")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plusminus_serv-request)))
  "Returns md5sum for a message object of type 'plusminus_serv-request"
  "30760a2ae78bf5e8cc7c7a4386966418")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plusminus_serv-request>)))
  "Returns full string definition for message of type '<plusminus_serv-request>"
  (cl:format cl:nil "string command~%int16 inp1~%int16 inp2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plusminus_serv-request)))
  "Returns full string definition for message of type 'plusminus_serv-request"
  (cl:format cl:nil "string command~%int16 inp1~%int16 inp2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plusminus_serv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plusminus_serv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'plusminus_serv-request
    (cl:cons ':command (command msg))
    (cl:cons ':inp1 (inp1 msg))
    (cl:cons ':inp2 (inp2 msg))
))
;//! \htmlinclude plusminus_serv-response.msg.html

(cl:defclass <plusminus_serv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type s_c_plusminus-msg:output
    :initform (cl:make-instance 's_c_plusminus-msg:output)))
)

(cl:defclass plusminus_serv-response (<plusminus_serv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plusminus_serv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plusminus_serv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name s_c_plusminus-srv:<plusminus_serv-response> is deprecated: use s_c_plusminus-srv:plusminus_serv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <plusminus_serv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader s_c_plusminus-srv:response-val is deprecated.  Use s_c_plusminus-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plusminus_serv-response>) ostream)
  "Serializes a message object of type '<plusminus_serv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plusminus_serv-response>) istream)
  "Deserializes a message object of type '<plusminus_serv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plusminus_serv-response>)))
  "Returns string type for a service object of type '<plusminus_serv-response>"
  "s_c_plusminus/plusminus_servResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plusminus_serv-response)))
  "Returns string type for a service object of type 'plusminus_serv-response"
  "s_c_plusminus/plusminus_servResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plusminus_serv-response>)))
  "Returns md5sum for a message object of type '<plusminus_serv-response>"
  "30760a2ae78bf5e8cc7c7a4386966418")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plusminus_serv-response)))
  "Returns md5sum for a message object of type 'plusminus_serv-response"
  "30760a2ae78bf5e8cc7c7a4386966418")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plusminus_serv-response>)))
  "Returns full string definition for message of type '<plusminus_serv-response>"
  (cl:format cl:nil "s_c_plusminus/output response~%~%~%================================================================================~%MSG: s_c_plusminus/output~%string equation~%int16 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plusminus_serv-response)))
  "Returns full string definition for message of type 'plusminus_serv-response"
  (cl:format cl:nil "s_c_plusminus/output response~%~%~%================================================================================~%MSG: s_c_plusminus/output~%string equation~%int16 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plusminus_serv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plusminus_serv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'plusminus_serv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'plusminus_serv)))
  'plusminus_serv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'plusminus_serv)))
  'plusminus_serv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plusminus_serv)))
  "Returns string type for a service object of type '<plusminus_serv>"
  "s_c_plusminus/plusminus_serv")