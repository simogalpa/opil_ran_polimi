; Auto-generated. Do not edit!


(cl:in-package lcr_driver-msg)


;//! \htmlinclude Uls.msg.html

(cl:defclass <Uls> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (measures
    :reader measures
    :initarg :measures
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 6 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass Uls (<Uls>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Uls>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Uls)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_driver-msg:<Uls> is deprecated: use lcr_driver-msg:Uls instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Uls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:header-val is deprecated.  Use lcr_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'measures-val :lambda-list '(m))
(cl:defmethod measures-val ((m <Uls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:measures-val is deprecated.  Use lcr_driver-msg:measures instead.")
  (measures m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Uls>)))
    "Constants for message type '<Uls>"
  '((:RANGE_MAX . 1.5)
    (:RANGE_MIN . 0.4)
    (:BEAM . 1.39626))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Uls)))
    "Constants for message type 'Uls"
  '((:RANGE_MAX . 1.5)
    (:RANGE_MIN . 0.4)
    (:BEAM . 1.39626))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Uls>) ostream)
  "Serializes a message object of type '<Uls>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'measures))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Uls>) istream)
  "Deserializes a message object of type '<Uls>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'measures) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'measures)))
    (cl:dotimes (i 6)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Uls>)))
  "Returns string type for a message object of type '<Uls>"
  "lcr_driver/Uls")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Uls)))
  "Returns string type for a message object of type 'Uls"
  "lcr_driver/Uls")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Uls>)))
  "Returns md5sum for a message object of type '<Uls>"
  "c8ed7d4d3b258a49ae30b36a4e353dda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Uls)))
  "Returns md5sum for a message object of type 'Uls"
  "c8ed7d4d3b258a49ae30b36a4e353dda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Uls>)))
  "Returns full string definition for message of type '<Uls>"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose[6] measures # array of data~%float64 range_max=1.5~%float64 range_min=0.4~%float64 beam=1.39626 #80° in Rad~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Uls)))
  "Returns full string definition for message of type 'Uls"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose[6] measures # array of data~%float64 range_max=1.5~%float64 range_min=0.4~%float64 beam=1.39626 #80° in Rad~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Uls>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'measures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Uls>))
  "Converts a ROS message object to a list"
  (cl:list 'Uls
    (cl:cons ':header (header msg))
    (cl:cons ':measures (measures msg))
))
