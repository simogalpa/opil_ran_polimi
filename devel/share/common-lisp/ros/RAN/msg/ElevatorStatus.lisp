; Auto-generated. Do not edit!


(cl:in-package RAN-msg)


;//! \htmlinclude ElevatorStatus.msg.html

(cl:defclass <ElevatorStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (complete_opened_doors
    :reader complete_opened_doors
    :initarg :complete_opened_doors
    :type cl:boolean
    :initform cl:nil)
   (complete_closed_doors
    :reader complete_closed_doors
    :initarg :complete_closed_doors
    :type cl:boolean
    :initform cl:nil)
   (busy
    :reader busy
    :initarg :busy
    :type cl:boolean
    :initform cl:nil)
   (zero_floor
    :reader zero_floor
    :initarg :zero_floor
    :type cl:boolean
    :initform cl:nil)
   (first_floor
    :reader first_floor
    :initarg :first_floor
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ElevatorStatus (<ElevatorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RAN-msg:<ElevatorStatus> is deprecated: use RAN-msg:ElevatorStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:header-val is deprecated.  Use RAN-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'complete_opened_doors-val :lambda-list '(m))
(cl:defmethod complete_opened_doors-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:complete_opened_doors-val is deprecated.  Use RAN-msg:complete_opened_doors instead.")
  (complete_opened_doors m))

(cl:ensure-generic-function 'complete_closed_doors-val :lambda-list '(m))
(cl:defmethod complete_closed_doors-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:complete_closed_doors-val is deprecated.  Use RAN-msg:complete_closed_doors instead.")
  (complete_closed_doors m))

(cl:ensure-generic-function 'busy-val :lambda-list '(m))
(cl:defmethod busy-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:busy-val is deprecated.  Use RAN-msg:busy instead.")
  (busy m))

(cl:ensure-generic-function 'zero_floor-val :lambda-list '(m))
(cl:defmethod zero_floor-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:zero_floor-val is deprecated.  Use RAN-msg:zero_floor instead.")
  (zero_floor m))

(cl:ensure-generic-function 'first_floor-val :lambda-list '(m))
(cl:defmethod first_floor-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:first_floor-val is deprecated.  Use RAN-msg:first_floor instead.")
  (first_floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorStatus>) ostream)
  "Serializes a message object of type '<ElevatorStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'complete_opened_doors) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'complete_closed_doors) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'busy) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'zero_floor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'first_floor) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorStatus>) istream)
  "Deserializes a message object of type '<ElevatorStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'complete_opened_doors) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'complete_closed_doors) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'busy) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'zero_floor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'first_floor) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorStatus>)))
  "Returns string type for a message object of type '<ElevatorStatus>"
  "RAN/ElevatorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorStatus)))
  "Returns string type for a message object of type 'ElevatorStatus"
  "RAN/ElevatorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorStatus>)))
  "Returns md5sum for a message object of type '<ElevatorStatus>"
  "07c4ee4aed76536c26fd414cd95d5817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorStatus)))
  "Returns md5sum for a message object of type 'ElevatorStatus"
  "07c4ee4aed76536c26fd414cd95d5817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorStatus>)))
  "Returns full string definition for message of type '<ElevatorStatus>"
  (cl:format cl:nil "Header header~%bool complete_opened_doors~%bool complete_closed_doors~%bool busy~%bool zero_floor~%bool first_floor~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorStatus)))
  "Returns full string definition for message of type 'ElevatorStatus"
  (cl:format cl:nil "Header header~%bool complete_opened_doors~%bool complete_closed_doors~%bool busy~%bool zero_floor~%bool first_floor~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorStatus
    (cl:cons ':header (header msg))
    (cl:cons ':complete_opened_doors (complete_opened_doors msg))
    (cl:cons ':complete_closed_doors (complete_closed_doors msg))
    (cl:cons ':busy (busy msg))
    (cl:cons ':zero_floor (zero_floor msg))
    (cl:cons ':first_floor (first_floor msg))
))
