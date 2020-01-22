; Auto-generated. Do not edit!


(cl:in-package lcr_shared-msg)


;//! \htmlinclude ElevatorStatus.msg.html

(cl:defclass <ElevatorStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (floor
    :reader floor
    :initarg :floor
    :type cl:fixnum
    :initform 0)
   (open
    :reader open
    :initarg :open
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ElevatorStatus (<ElevatorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-msg:<ElevatorStatus> is deprecated: use lcr_shared-msg:ElevatorStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:header-val is deprecated.  Use lcr_shared-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:floor-val is deprecated.  Use lcr_shared-msg:floor instead.")
  (floor m))

(cl:ensure-generic-function 'open-val :lambda-list '(m))
(cl:defmethod open-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:open-val is deprecated.  Use lcr_shared-msg:open instead.")
  (open m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorStatus>) ostream)
  "Serializes a message object of type '<ElevatorStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'open) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorStatus>) istream)
  "Deserializes a message object of type '<ElevatorStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'open) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorStatus>)))
  "Returns string type for a message object of type '<ElevatorStatus>"
  "lcr_shared/ElevatorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorStatus)))
  "Returns string type for a message object of type 'ElevatorStatus"
  "lcr_shared/ElevatorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorStatus>)))
  "Returns md5sum for a message object of type '<ElevatorStatus>"
  "d3137c1e661861465aec7017938785a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorStatus)))
  "Returns md5sum for a message object of type 'ElevatorStatus"
  "d3137c1e661861465aec7017938785a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorStatus>)))
  "Returns full string definition for message of type '<ElevatorStatus>"
  (cl:format cl:nil "Header header~%int8 floor # ground: 0, first:1, ...~%bool open # open / closed doors~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorStatus)))
  "Returns full string definition for message of type 'ElevatorStatus"
  (cl:format cl:nil "Header header~%int8 floor # ground: 0, first:1, ...~%bool open # open / closed doors~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorStatus
    (cl:cons ':header (header msg))
    (cl:cons ':floor (floor msg))
    (cl:cons ':open (open msg))
))
