; Auto-generated. Do not edit!


(cl:in-package mars_common_msgs-msg)


;//! \htmlinclude Id.msg.html

(cl:defclass <Id> (roslisp-msg-protocol:ros-message)
  ((uuid
    :reader uuid
    :initarg :uuid
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 16 :element-type 'cl:fixnum :initial-element 0))
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass Id (<Id>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Id>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Id)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mars_common_msgs-msg:<Id> is deprecated: use mars_common_msgs-msg:Id instead.")))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <Id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_common_msgs-msg:uuid-val is deprecated.  Use mars_common_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_common_msgs-msg:description-val is deprecated.  Use mars_common_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Id>) ostream)
  "Serializes a message object of type '<Id>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Id>) istream)
  "Deserializes a message object of type '<Id>"
  (cl:setf (cl:slot-value msg 'uuid) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'uuid)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Id>)))
  "Returns string type for a message object of type '<Id>"
  "mars_common_msgs/Id")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Id)))
  "Returns string type for a message object of type 'Id"
  "mars_common_msgs/Id")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Id>)))
  "Returns md5sum for a message object of type '<Id>"
  "20d26aeafb6083d49d76671a35d45e12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Id)))
  "Returns md5sum for a message object of type 'Id"
  "20d26aeafb6083d49d76671a35d45e12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Id>)))
  "Returns full string definition for message of type '<Id>"
  (cl:format cl:nil "# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Id)))
  "Returns full string definition for message of type 'Id"
  (cl:format cl:nil "# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Id>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'uuid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Id>))
  "Converts a ROS message object to a list"
  (cl:list 'Id
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':description (description msg))
))
