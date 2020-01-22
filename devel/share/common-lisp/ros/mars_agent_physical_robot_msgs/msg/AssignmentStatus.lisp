; Auto-generated. Do not edit!


(cl:in-package mars_agent_physical_robot_msgs-msg)


;//! \htmlinclude AssignmentStatus.msg.html

(cl:defclass <AssignmentStatus> (roslisp-msg-protocol:ros-message)
  ((current_task_id
    :reader current_task_id
    :initarg :current_task_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (current_motion_id
    :reader current_motion_id
    :initarg :current_motion_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (current_action_id
    :reader current_action_id
    :initarg :current_action_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (last_finished_motion
    :reader last_finished_motion
    :initarg :last_finished_motion
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (last_finished_action
    :reader last_finished_action
    :initarg :last_finished_action
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (footprint
    :reader footprint
    :initarg :footprint
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass AssignmentStatus (<AssignmentStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignmentStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignmentStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mars_agent_physical_robot_msgs-msg:<AssignmentStatus> is deprecated: use mars_agent_physical_robot_msgs-msg:AssignmentStatus instead.")))

(cl:ensure-generic-function 'current_task_id-val :lambda-list '(m))
(cl:defmethod current_task_id-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:current_task_id-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:current_task_id instead.")
  (current_task_id m))

(cl:ensure-generic-function 'current_motion_id-val :lambda-list '(m))
(cl:defmethod current_motion_id-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:current_motion_id-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:current_motion_id instead.")
  (current_motion_id m))

(cl:ensure-generic-function 'current_action_id-val :lambda-list '(m))
(cl:defmethod current_action_id-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:current_action_id-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:current_action_id instead.")
  (current_action_id m))

(cl:ensure-generic-function 'last_finished_motion-val :lambda-list '(m))
(cl:defmethod last_finished_motion-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:last_finished_motion-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:last_finished_motion instead.")
  (last_finished_motion m))

(cl:ensure-generic-function 'last_finished_action-val :lambda-list '(m))
(cl:defmethod last_finished_action-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:last_finished_action-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:last_finished_action instead.")
  (last_finished_action m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:footprint-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:footprint instead.")
  (footprint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignmentStatus>) ostream)
  "Serializes a message object of type '<AssignmentStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_task_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_motion_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_action_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_finished_motion) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_finished_action) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'footprint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignmentStatus>) istream)
  "Deserializes a message object of type '<AssignmentStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_task_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_motion_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_action_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_finished_motion) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_finished_action) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'footprint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignmentStatus>)))
  "Returns string type for a message object of type '<AssignmentStatus>"
  "mars_agent_physical_robot_msgs/AssignmentStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignmentStatus)))
  "Returns string type for a message object of type 'AssignmentStatus"
  "mars_agent_physical_robot_msgs/AssignmentStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignmentStatus>)))
  "Returns md5sum for a message object of type '<AssignmentStatus>"
  "51331f0d54af7e13d2a0c817444fec5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignmentStatus)))
  "Returns md5sum for a message object of type 'AssignmentStatus"
  "51331f0d54af7e13d2a0c817444fec5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignmentStatus>)))
  "Returns full string definition for message of type '<AssignmentStatus>"
  (cl:format cl:nil "mars_common_msgs/Id current_task_id~%mars_common_msgs/Id current_motion_id~%mars_common_msgs/Id current_action_id~%mars_common_msgs/Id last_finished_motion~%mars_common_msgs/Id last_finished_action~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignmentStatus)))
  "Returns full string definition for message of type 'AssignmentStatus"
  (cl:format cl:nil "mars_common_msgs/Id current_task_id~%mars_common_msgs/Id current_motion_id~%mars_common_msgs/Id current_action_id~%mars_common_msgs/Id last_finished_motion~%mars_common_msgs/Id last_finished_action~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignmentStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_task_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_motion_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_action_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_finished_motion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_finished_action))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'footprint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignmentStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignmentStatus
    (cl:cons ':current_task_id (current_task_id msg))
    (cl:cons ':current_motion_id (current_motion_id msg))
    (cl:cons ':current_action_id (current_action_id msg))
    (cl:cons ':last_finished_motion (last_finished_motion msg))
    (cl:cons ':last_finished_action (last_finished_action msg))
    (cl:cons ':footprint (footprint msg))
))
