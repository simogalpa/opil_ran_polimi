; Auto-generated. Do not edit!


(cl:in-package lcr_shared-msg)


;//! \htmlinclude LCRError.msg.html

(cl:defclass <LCRError> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (error_type
    :reader error_type
    :initarg :error_type
    :type cl:fixnum
    :initform 0)
   (error_ID
    :reader error_ID
    :initarg :error_ID
    :type cl:string
    :initform ""))
)

(cl:defclass LCRError (<LCRError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LCRError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LCRError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-msg:<LCRError> is deprecated: use lcr_shared-msg:LCRError instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LCRError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:header-val is deprecated.  Use lcr_shared-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'error_type-val :lambda-list '(m))
(cl:defmethod error_type-val ((m <LCRError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:error_type-val is deprecated.  Use lcr_shared-msg:error_type instead.")
  (error_type m))

(cl:ensure-generic-function 'error_ID-val :lambda-list '(m))
(cl:defmethod error_ID-val ((m <LCRError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:error_ID-val is deprecated.  Use lcr_shared-msg:error_ID instead.")
  (error_ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LCRError>) ostream)
  "Serializes a message object of type '<LCRError>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_ID))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LCRError>) istream)
  "Deserializes a message object of type '<LCRError>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_ID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_ID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LCRError>)))
  "Returns string type for a message object of type '<LCRError>"
  "lcr_shared/LCRError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LCRError)))
  "Returns string type for a message object of type 'LCRError"
  "lcr_shared/LCRError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LCRError>)))
  "Returns md5sum for a message object of type '<LCRError>"
  "d9ea424d468e73498cf04a232a99c43e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LCRError)))
  "Returns md5sum for a message object of type 'LCRError"
  "d9ea424d468e73498cf04a232a99c43e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LCRError>)))
  "Returns full string definition for message of type '<LCRError>"
  (cl:format cl:nil "Header header~%int8 error_type #in ordine decrescente di gravita' 1-2-3-4~%string error_ID~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LCRError)))
  "Returns full string definition for message of type 'LCRError"
  (cl:format cl:nil "Header header~%int8 error_type #in ordine decrescente di gravita' 1-2-3-4~%string error_ID~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LCRError>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'error_ID))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LCRError>))
  "Converts a ROS message object to a list"
  (cl:list 'LCRError
    (cl:cons ':header (header msg))
    (cl:cons ':error_type (error_type msg))
    (cl:cons ':error_ID (error_ID msg))
))
