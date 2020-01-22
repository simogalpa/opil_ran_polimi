; Auto-generated. Do not edit!


(cl:in-package RAN-msg)


;//! \htmlinclude Emergency.msg.html

(cl:defclass <Emergency> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass Emergency (<Emergency>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Emergency>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Emergency)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RAN-msg:<Emergency> is deprecated: use RAN-msg:Emergency instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:robot_id-val is deprecated.  Use RAN-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:command-val is deprecated.  Use RAN-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:description-val is deprecated.  Use RAN-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Emergency>)))
    "Constants for message type '<Emergency>"
  '((:STOP . 0)
    (:RESTART . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Emergency)))
    "Constants for message type 'Emergency"
  '((:STOP . 0)
    (:RESTART . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Emergency>) ostream)
  "Serializes a message object of type '<Emergency>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Emergency>) istream)
  "Deserializes a message object of type '<Emergency>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Emergency>)))
  "Returns string type for a message object of type '<Emergency>"
  "RAN/Emergency")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Emergency)))
  "Returns string type for a message object of type 'Emergency"
  "RAN/Emergency")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Emergency>)))
  "Returns md5sum for a message object of type '<Emergency>"
  "15039e86619bd710ab69714ec41122a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Emergency)))
  "Returns md5sum for a message object of type 'Emergency"
  "15039e86619bd710ab69714ec41122a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Emergency>)))
  "Returns full string definition for message of type '<Emergency>"
  (cl:format cl:nil "# Emergency message~%mars_common_msgs/Id robot_id~%uint8 STOP = 0~%uint8 RESTART = 1~%uint8 command~%string description~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Emergency)))
  "Returns full string definition for message of type 'Emergency"
  (cl:format cl:nil "# Emergency message~%mars_common_msgs/Id robot_id~%uint8 STOP = 0~%uint8 RESTART = 1~%uint8 command~%string description~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Emergency>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     1
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Emergency>))
  "Converts a ROS message object to a list"
  (cl:list 'Emergency
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':command (command msg))
    (cl:cons ':description (description msg))
))
