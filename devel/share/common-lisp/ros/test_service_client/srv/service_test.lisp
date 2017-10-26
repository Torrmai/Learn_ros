; Auto-generated. Do not edit!


(cl:in-package test_service_client-srv)


;//! \htmlinclude service_test-request.msg.html

(cl:defclass <service_test-request> (roslisp-msg-protocol:ros-message)
  ((requestNO
    :reader requestNO
    :initarg :requestNO
    :type cl:fixnum
    :initform 0)
   (request
    :reader request
    :initarg :request
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass service_test-request (<service_test-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service_test-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service_test-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_service_client-srv:<service_test-request> is deprecated: use test_service_client-srv:service_test-request instead.")))

(cl:ensure-generic-function 'requestNO-val :lambda-list '(m))
(cl:defmethod requestNO-val ((m <service_test-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service_client-srv:requestNO-val is deprecated.  Use test_service_client-srv:requestNO instead.")
  (requestNO m))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <service_test-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service_client-srv:request-val is deprecated.  Use test_service_client-srv:request instead.")
  (request m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <service_test-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service_client-srv:data-val is deprecated.  Use test_service_client-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service_test-request>) ostream)
  "Serializes a message object of type '<service_test-request>"
  (cl:let* ((signed (cl:slot-value msg 'requestNO)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service_test-request>) istream)
  "Deserializes a message object of type '<service_test-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requestNO) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service_test-request>)))
  "Returns string type for a service object of type '<service_test-request>"
  "test_service_client/service_testRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service_test-request)))
  "Returns string type for a service object of type 'service_test-request"
  "test_service_client/service_testRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service_test-request>)))
  "Returns md5sum for a message object of type '<service_test-request>"
  "834f928ec74381cd9b270dead49151fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service_test-request)))
  "Returns md5sum for a message object of type 'service_test-request"
  "834f928ec74381cd9b270dead49151fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service_test-request>)))
  "Returns full string definition for message of type '<service_test-request>"
  (cl:format cl:nil "int16 requestNO~%std_msgs/String request~%string data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service_test-request)))
  "Returns full string definition for message of type 'service_test-request"
  (cl:format cl:nil "int16 requestNO~%std_msgs/String request~%string data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service_test-request>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service_test-request>))
  "Converts a ROS message object to a list"
  (cl:list 'service_test-request
    (cl:cons ':requestNO (requestNO msg))
    (cl:cons ':request (request msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude service_test-response.msg.html

(cl:defclass <service_test-response> (roslisp-msg-protocol:ros-message)
  ((responseNO
    :reader responseNO
    :initarg :responseNO
    :type cl:fixnum
    :initform 0)
   (response
    :reader response
    :initarg :response
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass service_test-response (<service_test-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service_test-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service_test-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_service_client-srv:<service_test-response> is deprecated: use test_service_client-srv:service_test-response instead.")))

(cl:ensure-generic-function 'responseNO-val :lambda-list '(m))
(cl:defmethod responseNO-val ((m <service_test-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service_client-srv:responseNO-val is deprecated.  Use test_service_client-srv:responseNO instead.")
  (responseNO m))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <service_test-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service_client-srv:response-val is deprecated.  Use test_service_client-srv:response instead.")
  (response m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <service_test-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_service_client-srv:data-val is deprecated.  Use test_service_client-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service_test-response>) ostream)
  "Serializes a message object of type '<service_test-response>"
  (cl:let* ((signed (cl:slot-value msg 'responseNO)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service_test-response>) istream)
  "Deserializes a message object of type '<service_test-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'responseNO) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service_test-response>)))
  "Returns string type for a service object of type '<service_test-response>"
  "test_service_client/service_testResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service_test-response)))
  "Returns string type for a service object of type 'service_test-response"
  "test_service_client/service_testResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service_test-response>)))
  "Returns md5sum for a message object of type '<service_test-response>"
  "834f928ec74381cd9b270dead49151fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service_test-response)))
  "Returns md5sum for a message object of type 'service_test-response"
  "834f928ec74381cd9b270dead49151fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service_test-response>)))
  "Returns full string definition for message of type '<service_test-response>"
  (cl:format cl:nil "~%int16 responseNO~%std_msgs/String response~%string data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service_test-response)))
  "Returns full string definition for message of type 'service_test-response"
  (cl:format cl:nil "~%int16 responseNO~%std_msgs/String response~%string data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service_test-response>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service_test-response>))
  "Converts a ROS message object to a list"
  (cl:list 'service_test-response
    (cl:cons ':responseNO (responseNO msg))
    (cl:cons ':response (response msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'service_test)))
  'service_test-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'service_test)))
  'service_test-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service_test)))
  "Returns string type for a service object of type '<service_test>"
  "test_service_client/service_test")