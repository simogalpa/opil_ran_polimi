; Auto-generated. Do not edit!


(cl:in-package ran-msg)


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
    :type ran-msg:Id
    :initform (cl:make-instance 'ran-msg:Id))
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ran-msg:<ErrorAGV> is deprecated: use ran-msg:ErrorAGV instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ErrorAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ran-msg:header-val is deprecated.  Use ran-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_id-val :lambda-list '(m))
(cl:defmethod vehicle_id-val ((m <ErrorAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ran-msg:vehicle_id-val is deprecated.  Use ran-msg:vehicle_id instead.")
  (vehicle_id m))

(cl:ensure-generic-function 'error_AGV-val :lambda-list '(m))
(cl:defmethod error_AGV-val ((m <ErrorAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ran-msg:error_AGV-val is deprecated.  Use ran-msg:error_AGV instead.")
  (error_AGV m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <ErrorAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ran-msg:description-val is deprecated.  Use ran-msg:description instead.")
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
  "ran/ErrorAGV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorAGV)))
  "Returns string type for a message object of type 'ErrorAGV"
  "ran/ErrorAGV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorAGV>)))
  "Returns md5sum for a message object of type '<ErrorAGV>"
  "78ad4f48718cf35af4c2e5acf0a34b81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorAGV)))
  "Returns md5sum for a message object of type 'ErrorAGV"
  "78ad4f48718cf35af4c2e5acf0a34b81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorAGV>)))
  "Returns full string definition for message of type '<ErrorAGV>"
  (cl:format cl:nil "# Error message from the AGV~%std_msgs/Header header~%Id vehicle_id~%uint8 error_AGV~%string description~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ran/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorAGV)))
  "Returns full string definition for message of type 'ErrorAGV"
  (cl:format cl:nil "# Error message from the AGV~%std_msgs/Header header~%Id vehicle_id~%uint8 error_AGV~%string description~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ran/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%~%"))
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
