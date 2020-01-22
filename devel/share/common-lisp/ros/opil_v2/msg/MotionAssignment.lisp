; Auto-generated. Do not edit!


(cl:in-package opil_v2-msg)


;//! \htmlinclude MotionAssignment.msg.html

(cl:defclass <MotionAssignment> (roslisp-msg-protocol:ros-message)
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
   (point_id
    :reader point_id
    :initarg :point_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (task_id
    :reader task_id
    :initarg :task_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (motion_id
    :reader motion_id
    :initarg :motion_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (is_waypoint
    :reader is_waypoint
    :initarg :is_waypoint
    :type cl:boolean
    :initform cl:nil)
   (use_orientation
    :reader use_orientation
    :initarg :use_orientation
    :type cl:boolean
    :initform cl:nil)
   (max_velocity
    :reader max_velocity
    :initarg :max_velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (max_acceleration
    :reader max_acceleration
    :initarg :max_acceleration
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (motion_area
    :reader motion_area
    :initarg :motion_area
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped))
   (sequence
    :reader sequence
    :initarg :sequence
    :type opil_v2-msg:Sequence
    :initform (cl:make-instance 'opil_v2-msg:Sequence)))
)

(cl:defclass MotionAssignment (<MotionAssignment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionAssignment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionAssignment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opil_v2-msg:<MotionAssignment> is deprecated: use opil_v2-msg:MotionAssignment instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:header-val is deprecated.  Use opil_v2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:robot_id-val is deprecated.  Use opil_v2-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'point_id-val :lambda-list '(m))
(cl:defmethod point_id-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:point_id-val is deprecated.  Use opil_v2-msg:point_id instead.")
  (point_id m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:task_id-val is deprecated.  Use opil_v2-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'motion_id-val :lambda-list '(m))
(cl:defmethod motion_id-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:motion_id-val is deprecated.  Use opil_v2-msg:motion_id instead.")
  (motion_id m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:point-val is deprecated.  Use opil_v2-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'is_waypoint-val :lambda-list '(m))
(cl:defmethod is_waypoint-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:is_waypoint-val is deprecated.  Use opil_v2-msg:is_waypoint instead.")
  (is_waypoint m))

(cl:ensure-generic-function 'use_orientation-val :lambda-list '(m))
(cl:defmethod use_orientation-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:use_orientation-val is deprecated.  Use opil_v2-msg:use_orientation instead.")
  (use_orientation m))

(cl:ensure-generic-function 'max_velocity-val :lambda-list '(m))
(cl:defmethod max_velocity-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_velocity-val is deprecated.  Use opil_v2-msg:max_velocity instead.")
  (max_velocity m))

(cl:ensure-generic-function 'max_acceleration-val :lambda-list '(m))
(cl:defmethod max_acceleration-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_acceleration-val is deprecated.  Use opil_v2-msg:max_acceleration instead.")
  (max_acceleration m))

(cl:ensure-generic-function 'motion_area-val :lambda-list '(m))
(cl:defmethod motion_area-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:motion_area-val is deprecated.  Use opil_v2-msg:motion_area instead.")
  (motion_area m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <MotionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:sequence-val is deprecated.  Use opil_v2-msg:sequence instead.")
  (sequence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionAssignment>) ostream)
  "Serializes a message object of type '<MotionAssignment>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_waypoint) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_orientation) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_area) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sequence) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionAssignment>) istream)
  "Deserializes a message object of type '<MotionAssignment>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:setf (cl:slot-value msg 'is_waypoint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_orientation) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_area) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sequence) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionAssignment>)))
  "Returns string type for a message object of type '<MotionAssignment>"
  "opil_v2/MotionAssignment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionAssignment)))
  "Returns string type for a message object of type 'MotionAssignment"
  "opil_v2/MotionAssignment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionAssignment>)))
  "Returns md5sum for a message object of type '<MotionAssignment>"
  "c94b53e5b03525bbcd11becc8ae7b0b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionAssignment)))
  "Returns md5sum for a message object of type 'MotionAssignment"
  "c94b53e5b03525bbcd11becc8ae7b0b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionAssignment>)))
  "Returns full string definition for message of type '<MotionAssignment>"
  (cl:format cl:nil "# Message concerning the assignment of a new Motion command~%Header header~%Id robot_id~%Id point_id~%Id task_id~%Id motion_id~%geometry_msgs/Pose2D point~%# TRUE if the point is a waypoint, FALSE if it is a goal~%bool is_waypoint~%# TRUE if the theta of the point has to be considered~%bool use_orientation~%geometry_msgs/Twist max_velocity~%geometry_msgs/Accel max_acceleration~%# defines the area in which the robot can move~%geometry_msgs/PolygonStamped motion_area~%# the position of the assignment in the sequence~%Sequence sequence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: opil_v2/Sequence~%# Message for defining a sequence~%# actual position in the sequence~%int32 sequence_number~%# overall lenght of the sequence~%int32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionAssignment)))
  "Returns full string definition for message of type 'MotionAssignment"
  (cl:format cl:nil "# Message concerning the assignment of a new Motion command~%Header header~%Id robot_id~%Id point_id~%Id task_id~%Id motion_id~%geometry_msgs/Pose2D point~%# TRUE if the point is a waypoint, FALSE if it is a goal~%bool is_waypoint~%# TRUE if the theta of the point has to be considered~%bool use_orientation~%geometry_msgs/Twist max_velocity~%geometry_msgs/Accel max_acceleration~%# defines the area in which the robot can move~%geometry_msgs/PolygonStamped motion_area~%# the position of the assignment in the sequence~%Sequence sequence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: opil_v2/Sequence~%# Message for defining a sequence~%# actual position in the sequence~%int32 sequence_number~%# overall lenght of the sequence~%int32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionAssignment>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_area))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sequence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionAssignment>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionAssignment
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':point_id (point_id msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':motion_id (motion_id msg))
    (cl:cons ':point (point msg))
    (cl:cons ':is_waypoint (is_waypoint msg))
    (cl:cons ':use_orientation (use_orientation msg))
    (cl:cons ':max_velocity (max_velocity msg))
    (cl:cons ':max_acceleration (max_acceleration msg))
    (cl:cons ':motion_area (motion_area msg))
    (cl:cons ':sequence (sequence msg))
))
