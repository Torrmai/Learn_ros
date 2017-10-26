; Auto-generated. Do not edit!


(cl:in-package test_create_msg_new-msg)


;//! \htmlinclude robot_detail.msg.html

(cl:defclass <robot_detail> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (weight
    :reader weight
    :initarg :weight
    :type cl:fixnum
    :initform 0))
)

(cl:defclass robot_detail (<robot_detail>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_detail>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_detail)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_create_msg_new-msg:<robot_detail> is deprecated: use test_create_msg_new-msg:robot_detail instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <robot_detail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_create_msg_new-msg:name-val is deprecated.  Use test_create_msg_new-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <robot_detail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_create_msg_new-msg:year-val is deprecated.  Use test_create_msg_new-msg:year instead.")
  (year m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <robot_detail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_create_msg_new-msg:weight-val is deprecated.  Use test_create_msg_new-msg:weight instead.")
  (weight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_detail>) ostream)
  "Serializes a message object of type '<robot_detail>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'year)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'weight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'year) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'weight) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_detail>)))
  "Returns string type for a message object of type '<robot_detail>"
  "test_create_msg_new/robot_detail")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_detail)))
  "Returns string type for a message object of type 'robot_detail"
  "test_create_msg_new/robot_detail")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_detail>)))
  "Returns md5sum for a message object of type '<robot_detail>"
  "2e97aeb8e4a1494698359be495347896")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_detail)))
  "Returns md5sum for a message object of type 'robot_detail"
  "2e97aeb8e4a1494698359be495347896")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_detail>)))
  "Returns full string definition for message of type '<robot_detail>"
  (cl:format cl:nil "string name~%int16 year~%int16 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_detail)))
  "Returns full string definition for message of type 'robot_detail"
  (cl:format cl:nil "string name~%int16 year~%int16 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_detail>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_detail>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_detail
    (cl:cons ':name (name msg))
    (cl:cons ':year (year msg))
    (cl:cons ':weight (weight msg))
))
