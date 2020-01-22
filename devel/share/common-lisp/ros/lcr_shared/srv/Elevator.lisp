; Auto-generated. Do not edit!


(cl:in-package lcr_shared-srv)


;//! \htmlinclude Elevator-request.msg.html

(cl:defclass <Elevator-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (desired_floor
    :reader desired_floor
    :initarg :desired_floor
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Elevator-request (<Elevator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Elevator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Elevator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-srv:<Elevator-request> is deprecated: use lcr_shared-srv:Elevator-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Elevator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-srv:action-val is deprecated.  Use lcr_shared-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'desired_floor-val :lambda-list '(m))
(cl:defmethod desired_floor-val ((m <Elevator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-srv:desired_floor-val is deprecated.  Use lcr_shared-srv:desired_floor instead.")
  (desired_floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Elevator-request>) ostream)
  "Serializes a message object of type '<Elevator-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let* ((signed (cl:slot-value msg 'desired_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Elevator-request>) istream)
  "Deserializes a message object of type '<Elevator-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desired_floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Elevator-request>)))
  "Returns string type for a service object of type '<Elevator-request>"
  "lcr_shared/ElevatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Elevator-request)))
  "Returns string type for a service object of type 'Elevator-request"
  "lcr_shared/ElevatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Elevator-request>)))
  "Returns md5sum for a message object of type '<Elevator-request>"
  "95eb02fdea4929cfb10e81b4601959cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Elevator-request)))
  "Returns md5sum for a message object of type 'Elevator-request"
  "95eb02fdea4929cfb10e81b4601959cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Elevator-request>)))
  "Returns full string definition for message of type '<Elevator-request>"
  (cl:format cl:nil "string action~%int8 desired_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Elevator-request)))
  "Returns full string definition for message of type 'Elevator-request"
  (cl:format cl:nil "string action~%int8 desired_floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Elevator-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Elevator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Elevator-request
    (cl:cons ':action (action msg))
    (cl:cons ':desired_floor (desired_floor msg))
))
;//! \htmlinclude Elevator-response.msg.html

(cl:defclass <Elevator-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Elevator-response (<Elevator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Elevator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Elevator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-srv:<Elevator-response> is deprecated: use lcr_shared-srv:Elevator-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Elevator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-srv:success-val is deprecated.  Use lcr_shared-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Elevator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-srv:message-val is deprecated.  Use lcr_shared-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Elevator-response>) ostream)
  "Serializes a message object of type '<Elevator-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Elevator-response>) istream)
  "Deserializes a message object of type '<Elevator-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Elevator-response>)))
  "Returns string type for a service object of type '<Elevator-response>"
  "lcr_shared/ElevatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Elevator-response)))
  "Returns string type for a service object of type 'Elevator-response"
  "lcr_shared/ElevatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Elevator-response>)))
  "Returns md5sum for a message object of type '<Elevator-response>"
  "95eb02fdea4929cfb10e81b4601959cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Elevator-response)))
  "Returns md5sum for a message object of type 'Elevator-response"
  "95eb02fdea4929cfb10e81b4601959cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Elevator-response>)))
  "Returns full string definition for message of type '<Elevator-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Elevator-response)))
  "Returns full string definition for message of type 'Elevator-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Elevator-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Elevator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Elevator-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Elevator)))
  'Elevator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Elevator)))
  'Elevator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Elevator)))
  "Returns string type for a service object of type '<Elevator>"
  "lcr_shared/Elevator")