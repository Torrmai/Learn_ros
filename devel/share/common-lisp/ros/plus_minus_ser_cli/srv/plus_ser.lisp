; Auto-generated. Do not edit!


(cl:in-package plus_minus_ser_cli-srv)


;//! \htmlinclude plus_ser-request.msg.html

(cl:defclass <plus_ser-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass plus_ser-request (<plus_ser-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plus_ser-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plus_ser-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plus_minus_ser_cli-srv:<plus_ser-request> is deprecated: use plus_minus_ser_cli-srv:plus_ser-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <plus_ser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_ser_cli-srv:command-val is deprecated.  Use plus_minus_ser_cli-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'inp1-val :lambda-list '(m))
(cl:defmethod inp1-val ((m <plus_ser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_ser_cli-srv:inp1-val is deprecated.  Use plus_minus_ser_cli-srv:inp1 instead.")
  (inp1 m))

(cl:ensure-generic-function 'inp2-val :lambda-list '(m))
(cl:defmethod inp2-val ((m <plus_ser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_ser_cli-srv:inp2-val is deprecated.  Use plus_minus_ser_cli-srv:inp2 instead.")
  (inp2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plus_ser-request>) ostream)
  "Serializes a message object of type '<plus_ser-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plus_ser-request>) istream)
  "Deserializes a message object of type '<plus_ser-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plus_ser-request>)))
  "Returns string type for a service object of type '<plus_ser-request>"
  "plus_minus_ser_cli/plus_serRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plus_ser-request)))
  "Returns string type for a service object of type 'plus_ser-request"
  "plus_minus_ser_cli/plus_serRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plus_ser-request>)))
  "Returns md5sum for a message object of type '<plus_ser-request>"
  "924fbc742266a2d82feb8ba54d391a66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plus_ser-request)))
  "Returns md5sum for a message object of type 'plus_ser-request"
  "924fbc742266a2d82feb8ba54d391a66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plus_ser-request>)))
  "Returns full string definition for message of type '<plus_ser-request>"
  (cl:format cl:nil "string command~%int16 inp1~%int16 inp2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plus_ser-request)))
  "Returns full string definition for message of type 'plus_ser-request"
  (cl:format cl:nil "string command~%int16 inp1~%int16 inp2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plus_ser-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plus_ser-request>))
  "Converts a ROS message object to a list"
  (cl:list 'plus_ser-request
    (cl:cons ':command (command msg))
    (cl:cons ':inp1 (inp1 msg))
    (cl:cons ':inp2 (inp2 msg))
))
;//! \htmlinclude plus_ser-response.msg.html

(cl:defclass <plus_ser-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (eq
    :reader eq
    :initarg :eq
    :type cl:string
    :initform ""))
)

(cl:defclass plus_ser-response (<plus_ser-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plus_ser-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plus_ser-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plus_minus_ser_cli-srv:<plus_ser-response> is deprecated: use plus_minus_ser_cli-srv:plus_ser-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <plus_ser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_ser_cli-srv:result-val is deprecated.  Use plus_minus_ser_cli-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'eq-val :lambda-list '(m))
(cl:defmethod eq-val ((m <plus_ser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plus_minus_ser_cli-srv:eq-val is deprecated.  Use plus_minus_ser_cli-srv:eq instead.")
  (eq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plus_ser-response>) ostream)
  "Serializes a message object of type '<plus_ser-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'eq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'eq))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plus_ser-response>) istream)
  "Deserializes a message object of type '<plus_ser-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'eq) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'eq) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plus_ser-response>)))
  "Returns string type for a service object of type '<plus_ser-response>"
  "plus_minus_ser_cli/plus_serResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plus_ser-response)))
  "Returns string type for a service object of type 'plus_ser-response"
  "plus_minus_ser_cli/plus_serResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plus_ser-response>)))
  "Returns md5sum for a message object of type '<plus_ser-response>"
  "924fbc742266a2d82feb8ba54d391a66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plus_ser-response)))
  "Returns md5sum for a message object of type 'plus_ser-response"
  "924fbc742266a2d82feb8ba54d391a66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plus_ser-response>)))
  "Returns full string definition for message of type '<plus_ser-response>"
  (cl:format cl:nil "int16 result~%string eq~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plus_ser-response)))
  "Returns full string definition for message of type 'plus_ser-response"
  (cl:format cl:nil "int16 result~%string eq~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plus_ser-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'eq))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plus_ser-response>))
  "Converts a ROS message object to a list"
  (cl:list 'plus_ser-response
    (cl:cons ':result (result msg))
    (cl:cons ':eq (eq msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'plus_ser)))
  'plus_ser-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'plus_ser)))
  'plus_ser-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plus_ser)))
  "Returns string type for a service object of type '<plus_ser>"
  "plus_minus_ser_cli/plus_ser")