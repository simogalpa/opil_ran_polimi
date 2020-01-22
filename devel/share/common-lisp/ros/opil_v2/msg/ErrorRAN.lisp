; Auto-generated. Do not edit!


(cl:in-package opil_v2-msg)


;//! \htmlinclude ErrorRAN.msg.html

(cl:defclass <ErrorRAN> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (error_RAN
    :reader error_RAN
    :initarg :error_RAN
    :type cl:fixnum
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (agv_error
    :reader agv_error
    :initarg :agv_error
    :type opil_v2-msg:ErrorAGV
    :initform (cl:make-instance 'opil_v2-msg:ErrorAGV)))
)

(cl:defclass ErrorRAN (<ErrorRAN>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorRAN>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorRAN)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opil_v2-msg:<ErrorRAN> is deprecated: use opil_v2-msg:ErrorRAN instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ErrorRAN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:header-val is deprecated.  Use opil_v2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <ErrorRAN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:robot_id-val is deprecated.  Use opil_v2-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'error_RAN-val :lambda-list '(m))
(cl:defmethod error_RAN-val ((m <ErrorRAN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:error_RAN-val is deprecated.  Use opil_v2-msg:error_RAN instead.")
  (error_RAN m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <ErrorRAN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:description-val is deprecated.  Use opil_v2-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'agv_error-val :lambda-list '(m))
(cl:defmethod agv_error-val ((m <ErrorRAN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:agv_error-val is deprecated.  Use opil_v2-msg:agv_error instead.")
  (agv_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorRAN>) ostream)
  "Serializes a message object of type '<ErrorRAN>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_RAN)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'agv_error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorRAN>) istream)
  "Deserializes a message object of type '<ErrorRAN>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_RAN)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'agv_error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorRAN>)))
  "Returns string type for a message object of type '<ErrorRAN>"
  "opil_v2/ErrorRAN")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorRAN)))
  "Returns string type for a message object of type 'ErrorRAN"
  "opil_v2/ErrorRAN")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorRAN>)))
  "Returns md5sum for a message object of type '<ErrorRAN>"
  "64923603d670371b84825165fc533575")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorRAN)))
  "Returns md5sum for a message object of type 'ErrorRAN"
  "64923603d670371b84825165fc533575")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorRAN>)))
  "Returns full string definition for message of type '<ErrorRAN>"
  (cl:format cl:nil "# Error message from the RAN~%std_msgs/Header header~%Id robot_id~%uint8 error_RAN~%string description~%ErrorAGV agv_error~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: opil_v2/ErrorAGV~%# Error message from the AGV~%std_msgs/Header header~%Id vehicle_id~%uint8 error_AGV~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorRAN)))
  "Returns full string definition for message of type 'ErrorRAN"
  (cl:format cl:nil "# Error message from the RAN~%std_msgs/Header header~%Id robot_id~%uint8 error_RAN~%string description~%ErrorAGV agv_error~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: opil_v2/ErrorAGV~%# Error message from the AGV~%std_msgs/Header header~%Id vehicle_id~%uint8 error_AGV~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorRAN>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     1
     4 (cl:length (cl:slot-value msg 'description))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'agv_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorRAN>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorRAN
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':error_RAN (error_RAN msg))
    (cl:cons ':description (description msg))
    (cl:cons ':agv_error (agv_error msg))
))
