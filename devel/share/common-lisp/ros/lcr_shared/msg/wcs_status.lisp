; Auto-generated. Do not edit!


(cl:in-package lcr_shared-msg)


;//! \htmlinclude wcs_status.msg.html

(cl:defclass <wcs_status> (roslisp-msg-protocol:ros-message)
  ((virtual_object_version_id
    :reader virtual_object_version_id
    :initarg :virtual_object_version_id
    :type cl:integer
    :initform 0)
   (mission_id
    :reader mission_id
    :initarg :mission_id
    :type cl:string
    :initform "")
   (wcs_adapter_ros_header
    :reader wcs_adapter_ros_header
    :initarg :wcs_adapter_ros_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (error_type
    :reader error_type
    :initarg :error_type
    :type cl:fixnum
    :initform 0)
   (error_id
    :reader error_id
    :initarg :error_id
    :type cl:string
    :initform "")
   (error_header
    :reader error_header
    :initarg :error_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass wcs_status (<wcs_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wcs_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wcs_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-msg:<wcs_status> is deprecated: use lcr_shared-msg:wcs_status instead.")))

(cl:ensure-generic-function 'virtual_object_version_id-val :lambda-list '(m))
(cl:defmethod virtual_object_version_id-val ((m <wcs_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:virtual_object_version_id-val is deprecated.  Use lcr_shared-msg:virtual_object_version_id instead.")
  (virtual_object_version_id m))

(cl:ensure-generic-function 'mission_id-val :lambda-list '(m))
(cl:defmethod mission_id-val ((m <wcs_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:mission_id-val is deprecated.  Use lcr_shared-msg:mission_id instead.")
  (mission_id m))

(cl:ensure-generic-function 'wcs_adapter_ros_header-val :lambda-list '(m))
(cl:defmethod wcs_adapter_ros_header-val ((m <wcs_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:wcs_adapter_ros_header-val is deprecated.  Use lcr_shared-msg:wcs_adapter_ros_header instead.")
  (wcs_adapter_ros_header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <wcs_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:status-val is deprecated.  Use lcr_shared-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'error_type-val :lambda-list '(m))
(cl:defmethod error_type-val ((m <wcs_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:error_type-val is deprecated.  Use lcr_shared-msg:error_type instead.")
  (error_type m))

(cl:ensure-generic-function 'error_id-val :lambda-list '(m))
(cl:defmethod error_id-val ((m <wcs_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:error_id-val is deprecated.  Use lcr_shared-msg:error_id instead.")
  (error_id m))

(cl:ensure-generic-function 'error_header-val :lambda-list '(m))
(cl:defmethod error_header-val ((m <wcs_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:error_header-val is deprecated.  Use lcr_shared-msg:error_header instead.")
  (error_header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wcs_status>) ostream)
  "Serializes a message object of type '<wcs_status>"
  (cl:let* ((signed (cl:slot-value msg 'virtual_object_version_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mission_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mission_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wcs_adapter_ros_header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wcs_status>) istream)
  "Deserializes a message object of type '<wcs_status>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'virtual_object_version_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wcs_adapter_ros_header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wcs_status>)))
  "Returns string type for a message object of type '<wcs_status>"
  "lcr_shared/wcs_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wcs_status)))
  "Returns string type for a message object of type 'wcs_status"
  "lcr_shared/wcs_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wcs_status>)))
  "Returns md5sum for a message object of type '<wcs_status>"
  "4fe2a2cc15ab59605464b4b1259d9135")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wcs_status)))
  "Returns md5sum for a message object of type 'wcs_status"
  "4fe2a2cc15ab59605464b4b1259d9135")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wcs_status>)))
  "Returns full string definition for message of type '<wcs_status>"
  (cl:format cl:nil "int32 virtual_object_version_id~%string mission_id~%Header wcs_adapter_ros_header~%int8 status~%int8 error_type #0 no error~%string error_id~%Header error_header~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wcs_status)))
  "Returns full string definition for message of type 'wcs_status"
  (cl:format cl:nil "int32 virtual_object_version_id~%string mission_id~%Header wcs_adapter_ros_header~%int8 status~%int8 error_type #0 no error~%string error_id~%Header error_header~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wcs_status>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'mission_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wcs_adapter_ros_header))
     1
     1
     4 (cl:length (cl:slot-value msg 'error_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wcs_status>))
  "Converts a ROS message object to a list"
  (cl:list 'wcs_status
    (cl:cons ':virtual_object_version_id (virtual_object_version_id msg))
    (cl:cons ':mission_id (mission_id msg))
    (cl:cons ':wcs_adapter_ros_header (wcs_adapter_ros_header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':error_type (error_type msg))
    (cl:cons ':error_id (error_id msg))
    (cl:cons ':error_header (error_header msg))
))
