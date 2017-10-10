; Auto-generated. Do not edit!


(cl:in-package test_create_msg-msg)


;//! \htmlinclude robot_detail.msg.html

(cl:defclass <robot_detail> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (noOfThruster
    :reader noOfThruster
    :initarg :noOfThruster
    :type cl:fixnum
    :initform 0))
)

(cl:defclass robot_detail (<robot_detail>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_detail>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_detail)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_create_msg-msg:<robot_detail> is deprecated: use test_create_msg-msg:robot_detail instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <robot_detail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_create_msg-msg:name-val is deprecated.  Use test_create_msg-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <robot_detail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_create_msg-msg:weight-val is deprecated.  Use test_create_msg-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'noOfThruster-val :lambda-list '(m))
(cl:defmethod noOfThruster-val ((m <robot_detail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_create_msg-msg:noOfThruster-val is deprecated.  Use test_create_msg-msg:noOfThruster instead.")
  (noOfThruster m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_detail>) ostream)
  "Serializes a message object of type '<robot_detail>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'noOfThruster)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_detail>) istream)
  "Deserializes a message object of type '<robot_detail>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noOfThruster) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_detail>)))
  "Returns string type for a message object of type '<robot_detail>"
  "test_create_msg/robot_detail")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_detail)))
  "Returns string type for a message object of type 'robot_detail"
  "test_create_msg/robot_detail")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_detail>)))
  "Returns md5sum for a message object of type '<robot_detail>"
  "48a1dd1c3cf1dd17dd60dbee884de278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_detail)))
  "Returns md5sum for a message object of type 'robot_detail"
  "48a1dd1c3cf1dd17dd60dbee884de278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_detail>)))
  "Returns full string definition for message of type '<robot_detail>"
  (cl:format cl:nil "string name~%float32 weight~%int16 noOfThruster~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_detail)))
  "Returns full string definition for message of type 'robot_detail"
  (cl:format cl:nil "string name~%float32 weight~%int16 noOfThruster~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_detail>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_detail>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_detail
    (cl:cons ':name (name msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':noOfThruster (noOfThruster msg))
))
