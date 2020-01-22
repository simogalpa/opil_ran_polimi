; Auto-generated. Do not edit!


(cl:in-package sim_msgs-msg)


;//! \htmlinclude RobotState.msg.html

(cl:defclass <RobotState> (roslisp-msg-protocol:ros-message)
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
   (last_terminated_action
    :reader last_terminated_action
    :initarg :last_terminated_action
    :type sim_msgs-msg:AssignmentId
    :initform (cl:make-instance 'sim_msgs-msg:AssignmentId))
   (robot_status
    :reader robot_status
    :initarg :robot_status
    :type industrial_msgs-msg:RobotStatus
    :initform (cl:make-instance 'industrial_msgs-msg:RobotStatus))
   (battery_state
    :reader battery_state
    :initarg :battery_state
    :type sensor_msgs-msg:BatteryState
    :initform (cl:make-instance 'sensor_msgs-msg:BatteryState))
   (current_position
    :reader current_position
    :initarg :current_position
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (current_velocity
    :reader current_velocity
    :initarg :current_velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (footprint
    :reader footprint
    :initarg :footprint
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass RobotState (<RobotState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sim_msgs-msg:<RobotState> is deprecated: use sim_msgs-msg:RobotState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:header-val is deprecated.  Use sim_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_id-val :lambda-list '(m))
(cl:defmethod vehicle_id-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:vehicle_id-val is deprecated.  Use sim_msgs-msg:vehicle_id instead.")
  (vehicle_id m))

(cl:ensure-generic-function 'last_terminated_action-val :lambda-list '(m))
(cl:defmethod last_terminated_action-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:last_terminated_action-val is deprecated.  Use sim_msgs-msg:last_terminated_action instead.")
  (last_terminated_action m))

(cl:ensure-generic-function 'robot_status-val :lambda-list '(m))
(cl:defmethod robot_status-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:robot_status-val is deprecated.  Use sim_msgs-msg:robot_status instead.")
  (robot_status m))

(cl:ensure-generic-function 'battery_state-val :lambda-list '(m))
(cl:defmethod battery_state-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:battery_state-val is deprecated.  Use sim_msgs-msg:battery_state instead.")
  (battery_state m))

(cl:ensure-generic-function 'current_position-val :lambda-list '(m))
(cl:defmethod current_position-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:current_position-val is deprecated.  Use sim_msgs-msg:current_position instead.")
  (current_position m))

(cl:ensure-generic-function 'current_velocity-val :lambda-list '(m))
(cl:defmethod current_velocity-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:current_velocity-val is deprecated.  Use sim_msgs-msg:current_velocity instead.")
  (current_velocity m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_msgs-msg:footprint-val is deprecated.  Use sim_msgs-msg:footprint instead.")
  (footprint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotState>) ostream)
  "Serializes a message object of type '<RobotState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_terminated_action) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'battery_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'footprint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotState>) istream)
  "Deserializes a message object of type '<RobotState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_terminated_action) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'battery_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'footprint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotState>)))
  "Returns string type for a message object of type '<RobotState>"
  "sim_msgs/RobotState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotState)))
  "Returns string type for a message object of type 'RobotState"
  "sim_msgs/RobotState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotState>)))
  "Returns md5sum for a message object of type '<RobotState>"
  "45226de6e5930fb93f540273f2dbf9ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotState)))
  "Returns md5sum for a message object of type 'RobotState"
  "45226de6e5930fb93f540273f2dbf9ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotState>)))
  "Returns full string definition for message of type '<RobotState>"
  (cl:format cl:nil "# Message defining the Robot / AGV status ~%Header header~%mars_common_msgs/Id vehicle_id~%AssignmentId last_terminated_action~%industrial_msgs/RobotStatus robot_status~%sensor_msgs/BatteryState battery_state~%geometry_msgs/Pose2D current_position~%geometry_msgs/Twist current_velocity~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%================================================================================~%MSG: sim_msgs/AssignmentId~%# Message for the definition of the ids of an Assignment~%mars_common_msgs/Id task_id~%mars_common_msgs/Id action_id~%mars_common_msgs/Id motion_id~%~%================================================================================~%MSG: industrial_msgs/RobotStatus~%# The RobotStatus message contains low level status information ~%# that is specific to an industrial robot controller~%~%# The header frame ID is not used~%Header header~%~%# The robot mode captures the operating mode of the robot.  When in~%# manual, remote motion is not possible.~%industrial_msgs/RobotMode mode~%~%# Estop status: True if robot is e-stopped.  The drives are disabled~%# and motion is not possible.  The e-stop condition must be acknowledged~%# and cleared before any motion can begin.~%industrial_msgs/TriState e_stopped~%~%# Drive power status: True if drives are powered.  Motion commands will ~%# automatically enable the drives if required.  Drive power is not requred~%# for possible motion~%industrial_msgs/TriState drives_powered~%~%# Motion enabled: True if robot motion is possible.~%industrial_msgs/TriState motion_possible~%~%# Motion status: True if robot is in motion, otherwise false~%industrial_msgs/TriState in_motion~%~%# Error status: True if there is an error condition on the robot. Motion may~%# or may not be affected (see motion_possible)~%industrial_msgs/TriState in_error~%~%# Error code: Vendor specific error code (non zero indicates error)~%int32 error_code~%~%================================================================================~%MSG: industrial_msgs/RobotMode~%# The Robot mode message encapsulates the mode/teach state of the robot~%# Typically this is controlled by the pendant key switch, but not always~%~%int8 val~%~%# enumerated values~%int8 UNKNOWN=-1                 # Unknown or unavailable         ~%int8 MANUAL=1 			 # Teach OR manual mode~%int8 AUTO=2                     # Automatic mode~%~%~%================================================================================~%MSG: industrial_msgs/TriState~%# The tri-state captures boolean values with the additional state of unknown~%~%int8 val~%~%# enumerated values~%~%# Unknown or unavailable ~%int8 UNKNOWN=-1  ~%~%# High state                       ~%int8 TRUE=1~%int8 ON=1~%int8 ENABLED=1~%int8 HIGH=1~%int8 CLOSED=1~%~%# Low state~%int8 FALSE=0~%int8 OFF=0~%int8 DISABLED=0~%int8 LOW=0~%int8 OPEN=0~%~%~%================================================================================~%MSG: sensor_msgs/BatteryState~%~%# Constants are chosen to match the enums in the linux kernel~%# defined in include/linux/power_supply.h as of version 3.7~%# The one difference is for style reasons the constants are~%# all uppercase not mixed case.~%~%# Power supply status constants~%uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0~%uint8 POWER_SUPPLY_STATUS_CHARGING = 1~%uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2~%uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3~%uint8 POWER_SUPPLY_STATUS_FULL = 4~%~%# Power supply health constants~%uint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0~%uint8 POWER_SUPPLY_HEALTH_GOOD = 1~%uint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2~%uint8 POWER_SUPPLY_HEALTH_DEAD = 3~%uint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4~%uint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5~%uint8 POWER_SUPPLY_HEALTH_COLD = 6~%uint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7~%uint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8~%~%# Power supply technology (chemistry) constants~%uint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0~%uint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1~%uint8 POWER_SUPPLY_TECHNOLOGY_LION = 2~%uint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3~%uint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4~%uint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5~%uint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6~%~%Header  header~%float32 voltage          # Voltage in Volts (Mandatory)~%float32 current          # Negative when discharging (A)  (If unmeasured NaN)~%float32 charge           # Current charge in Ah  (If unmeasured NaN)~%float32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)~%float32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)~%float32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)~%uint8   power_supply_status     # The charging status as reported. Values defined above~%uint8   power_supply_health     # The battery health metric. Values defined above~%uint8   power_supply_technology # The battery chemistry. Values defined above~%bool    present          # True if the battery is present~%~%float32[] cell_voltage   # An array of individual cell voltages for each cell in the pack~%                         # If individual voltages unknown but number of cells known set each to NaN~%string location          # The location into which the battery is inserted. (slot number or plug)~%string serial_number     # The best approximation of the battery serial number~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotState)))
  "Returns full string definition for message of type 'RobotState"
  (cl:format cl:nil "# Message defining the Robot / AGV status ~%Header header~%mars_common_msgs/Id vehicle_id~%AssignmentId last_terminated_action~%industrial_msgs/RobotStatus robot_status~%sensor_msgs/BatteryState battery_state~%geometry_msgs/Pose2D current_position~%geometry_msgs/Twist current_velocity~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%================================================================================~%MSG: sim_msgs/AssignmentId~%# Message for the definition of the ids of an Assignment~%mars_common_msgs/Id task_id~%mars_common_msgs/Id action_id~%mars_common_msgs/Id motion_id~%~%================================================================================~%MSG: industrial_msgs/RobotStatus~%# The RobotStatus message contains low level status information ~%# that is specific to an industrial robot controller~%~%# The header frame ID is not used~%Header header~%~%# The robot mode captures the operating mode of the robot.  When in~%# manual, remote motion is not possible.~%industrial_msgs/RobotMode mode~%~%# Estop status: True if robot is e-stopped.  The drives are disabled~%# and motion is not possible.  The e-stop condition must be acknowledged~%# and cleared before any motion can begin.~%industrial_msgs/TriState e_stopped~%~%# Drive power status: True if drives are powered.  Motion commands will ~%# automatically enable the drives if required.  Drive power is not requred~%# for possible motion~%industrial_msgs/TriState drives_powered~%~%# Motion enabled: True if robot motion is possible.~%industrial_msgs/TriState motion_possible~%~%# Motion status: True if robot is in motion, otherwise false~%industrial_msgs/TriState in_motion~%~%# Error status: True if there is an error condition on the robot. Motion may~%# or may not be affected (see motion_possible)~%industrial_msgs/TriState in_error~%~%# Error code: Vendor specific error code (non zero indicates error)~%int32 error_code~%~%================================================================================~%MSG: industrial_msgs/RobotMode~%# The Robot mode message encapsulates the mode/teach state of the robot~%# Typically this is controlled by the pendant key switch, but not always~%~%int8 val~%~%# enumerated values~%int8 UNKNOWN=-1                 # Unknown or unavailable         ~%int8 MANUAL=1 			 # Teach OR manual mode~%int8 AUTO=2                     # Automatic mode~%~%~%================================================================================~%MSG: industrial_msgs/TriState~%# The tri-state captures boolean values with the additional state of unknown~%~%int8 val~%~%# enumerated values~%~%# Unknown or unavailable ~%int8 UNKNOWN=-1  ~%~%# High state                       ~%int8 TRUE=1~%int8 ON=1~%int8 ENABLED=1~%int8 HIGH=1~%int8 CLOSED=1~%~%# Low state~%int8 FALSE=0~%int8 OFF=0~%int8 DISABLED=0~%int8 LOW=0~%int8 OPEN=0~%~%~%================================================================================~%MSG: sensor_msgs/BatteryState~%~%# Constants are chosen to match the enums in the linux kernel~%# defined in include/linux/power_supply.h as of version 3.7~%# The one difference is for style reasons the constants are~%# all uppercase not mixed case.~%~%# Power supply status constants~%uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0~%uint8 POWER_SUPPLY_STATUS_CHARGING = 1~%uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2~%uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3~%uint8 POWER_SUPPLY_STATUS_FULL = 4~%~%# Power supply health constants~%uint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0~%uint8 POWER_SUPPLY_HEALTH_GOOD = 1~%uint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2~%uint8 POWER_SUPPLY_HEALTH_DEAD = 3~%uint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4~%uint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5~%uint8 POWER_SUPPLY_HEALTH_COLD = 6~%uint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7~%uint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8~%~%# Power supply technology (chemistry) constants~%uint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0~%uint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1~%uint8 POWER_SUPPLY_TECHNOLOGY_LION = 2~%uint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3~%uint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4~%uint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5~%uint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6~%~%Header  header~%float32 voltage          # Voltage in Volts (Mandatory)~%float32 current          # Negative when discharging (A)  (If unmeasured NaN)~%float32 charge           # Current charge in Ah  (If unmeasured NaN)~%float32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)~%float32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)~%float32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)~%uint8   power_supply_status     # The charging status as reported. Values defined above~%uint8   power_supply_health     # The battery health metric. Values defined above~%uint8   power_supply_technology # The battery chemistry. Values defined above~%bool    present          # True if the battery is present~%~%float32[] cell_voltage   # An array of individual cell voltages for each cell in the pack~%                         # If individual voltages unknown but number of cells known set each to NaN~%string location          # The location into which the battery is inserted. (slot number or plug)~%string serial_number     # The best approximation of the battery serial number~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_terminated_action))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'battery_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'footprint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotState>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotState
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_id (vehicle_id msg))
    (cl:cons ':last_terminated_action (last_terminated_action msg))
    (cl:cons ':robot_status (robot_status msg))
    (cl:cons ':battery_state (battery_state msg))
    (cl:cons ':current_position (current_position msg))
    (cl:cons ':current_velocity (current_velocity msg))
    (cl:cons ':footprint (footprint msg))
))
