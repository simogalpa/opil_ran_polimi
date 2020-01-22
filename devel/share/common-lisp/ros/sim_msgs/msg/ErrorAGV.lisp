; Auto-generated. Do not edit!


(cl:in-package sim_msgs-msg)


;//! \htmlinclude ErrorAGV.msg.html

(cl:defclass <ErrorAGV> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_id
    :reader vehicle_id
    :initarg :vehicle_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (error_AGV
    :reader error_AGV
    :initarg :error_AGV
    :type cl:fixnum
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass ErrorAGV (<ErrorAGV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorAGV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorAGV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sim_msgs-msg:<ErrorAGV> is deprecated: use sim_msgs-msg:ErrorAGV instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ErrorAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:header-val is deprecated.  Use sim_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_id-val :lambda-list '(m))
(cl:defmethod vehicle_id-val ((m <ErrorAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:vehicle_id-val is deprecated.  Use sim_msgs-msg:vehicle_id instead.")
  (vehicle_id m))

(cl:ensure-generic-function 'error_AGV-val :lambda-list '(m))
(cl:defmethod error_AGV-val ((m <ErrorAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:error_AGV-val is deprecated.  Use sim_msgs-msg:error_AGV instead.")
  (error_AGV m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <ErrorAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:description-val is deprecated.  Use sim_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorAGV>) ostream)
  "Serializes a message object of type '<ErrorAGV>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_AGV)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorAGV>) istream)
  "Deserializes a message object of type '<ErrorAGV>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_AGV)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorAGV>)))
  "Returns string type for a message object of type '<ErrorAGV>"
  "sim_msgs/ErrorAGV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorAGV)))
  "Returns string type for a message object of type 'ErrorAGV"
  "sim_msgs/ErrorAGV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorAGV>)))
  "Returns md5sum for a message object of type '<ErrorAGV>"
  "e7e428f0a97eaf783f2ff75628d5be97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorAGV)))
  "Returns md5sum for a message object of type 'ErrorAGV"
  "e7e428f0a97eaf783f2ff75628d5be97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorAGV>)))
  "Returns full string definition for message of type '<ErrorAGV>"
  (cl:format cl:nil "# Error message from the AGV~%std_msgs/Header header~%mars_common_msgs/Id vehicle_id~%uint8 error_AGV~%string description~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorAGV)))
  "Returns full string definition for message of type 'ErrorAGV"
  (cl:format cl:nil "# Error message from the AGV~%std_msgs/Header header~%mars_common_msgs/Id vehicle_id~%uint8 error_AGV~%string description~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorAGV>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_id))
     1
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorAGV>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorAGV
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_id (vehicle_id msg))
    (cl:cons ':error_AGV (error_AGV msg))
    (cl:cons ':description (description msg))
))
