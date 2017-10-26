; Auto-generated. Do not edit!


(cl:in-package test_ser_cli-srv)


;//! \htmlinclude robot_service-request.msg.html

(cl:defclass <robot_service-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass robot_service-request (<robot_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_ser_cli-srv:<robot_service-request> is deprecated: use test_ser_cli-srv:robot_service-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <robot_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_ser_cli-srv:name-val is deprecated.  Use test_ser_cli-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_service-request>) ostream)
  "Serializes a message object of type '<robot_service-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_service-request>) istream)
  "Deserializes a message object of type '<robot_service-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_service-request>)))
  "Returns string type for a service object of type '<robot_service-request>"
  "test_ser_cli/robot_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_service-request)))
  "Returns string type for a service object of type 'robot_service-request"
  "test_ser_cli/robot_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_service-request>)))
  "Returns md5sum for a message object of type '<robot_service-request>"
  "8800708100fda626f86c83189e112add")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_service-request)))
  "Returns md5sum for a message object of type 'robot_service-request"
  "8800708100fda626f86c83189e112add")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_service-request>)))
  "Returns full string definition for message of type '<robot_service-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_service-request)))
  "Returns full string definition for message of type 'robot_service-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_service-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_service-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude robot_service-response.msg.html

(cl:defclass <robot_service-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type test_create_msg_new-msg:robot_detail
    :initform (cl:make-instance 'test_create_msg_new-msg:robot_detail)))
)

(cl:defclass robot_service-response (<robot_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_ser_cli-srv:<robot_service-response> is deprecated: use test_ser_cli-srv:robot_service-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <robot_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_ser_cli-srv:response-val is deprecated.  Use test_ser_cli-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_service-response>) ostream)
  "Serializes a message object of type '<robot_service-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_service-response>) istream)
  "Deserializes a message object of type '<robot_service-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_service-response>)))
  "Returns string type for a service object of type '<robot_service-response>"
  "test_ser_cli/robot_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_service-response)))
  "Returns string type for a service object of type 'robot_service-response"
  "test_ser_cli/robot_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_service-response>)))
  "Returns md5sum for a message object of type '<robot_service-response>"
  "8800708100fda626f86c83189e112add")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_service-response)))
  "Returns md5sum for a message object of type 'robot_service-response"
  "8800708100fda626f86c83189e112add")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_service-response>)))
  "Returns full string definition for message of type '<robot_service-response>"
  (cl:format cl:nil "test_create_msg_new/robot_detail response~%~%~%================================================================================~%MSG: test_create_msg_new/robot_detail~%string name~%int16 year~%int16 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_service-response)))
  "Returns full string definition for message of type 'robot_service-response"
  (cl:format cl:nil "test_create_msg_new/robot_detail response~%~%~%================================================================================~%MSG: test_create_msg_new/robot_detail~%string name~%int16 year~%int16 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_service-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_service-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robot_service)))
  'robot_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robot_service)))
  'robot_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_service)))
  "Returns string type for a service object of type '<robot_service>"
  "test_ser_cli/robot_service")