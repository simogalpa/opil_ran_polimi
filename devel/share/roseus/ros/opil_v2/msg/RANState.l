;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::RANState)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'RANState (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::RANSTATE")
  (make-package "OPIL_V2::RANSTATE"))

(in-package "ROS")
;;//! \htmlinclude RANState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*READY*" (find-package "OPIL_V2::RANSTATE"))
(shadow '*READY* (find-package "OPIL_V2::RANSTATE"))
(defconstant opil_v2::RANState::*READY* 0)
(intern "*MOVING*" (find-package "OPIL_V2::RANSTATE"))
(shadow '*MOVING* (find-package "OPIL_V2::RANSTATE"))
(defconstant opil_v2::RANState::*MOVING* 1)
(intern "*STOPPED*" (find-package "OPIL_V2::RANSTATE"))
(shadow '*STOPPED* (find-package "OPIL_V2::RANSTATE"))
(defconstant opil_v2::RANState::*STOPPED* 2)
(defclass opil_v2::RANState
  :super ros::object
  :slots (_header _robot_id _agv_msg _ran_status ))

(defmethod opil_v2::RANState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) (instance opil_v2::Id :init))
    ((:agv_msg __agv_msg) (instance opil_v2::RobotState :init))
    ((:ran_status __ran_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id __robot_id)
   (setq _agv_msg __agv_msg)
   (setq _ran_status (round __ran_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_id
   (&rest __robot_id)
   (if (keywordp (car __robot_id))
       (send* _robot_id __robot_id)
     (progn
       (if __robot_id (setq _robot_id (car __robot_id)))
       _robot_id)))
  (:agv_msg
   (&rest __agv_msg)
   (if (keywordp (car __agv_msg))
       (send* _agv_msg __agv_msg)
     (progn
       (if __agv_msg (setq _agv_msg (car __agv_msg)))
       _agv_msg)))
  (:ran_status
   (&optional __ran_status)
   (if __ran_status (setq _ran_status __ran_status)) _ran_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; opil_v2/Id _robot_id
    (send _robot_id :serialization-length)
    ;; opil_v2/RobotState _agv_msg
    (send _agv_msg :serialization-length)
    ;; uint8 _ran_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opil_v2/Id _robot_id
       (send _robot_id :serialize s)
     ;; opil_v2/RobotState _agv_msg
       (send _agv_msg :serialize s)
     ;; uint8 _ran_status
       (write-byte _ran_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opil_v2/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; opil_v2/RobotState _agv_msg
     (send _agv_msg :deserialize buf ptr-) (incf ptr- (send _agv_msg :serialization-length))
   ;; uint8 _ran_status
     (setq _ran_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get opil_v2::RANState :md5sum-) "2dc33cda2b4054bb83982ac7e5fc4fb8")
(setf (get opil_v2::RANState :datatype-) "opil_v2/RANState")
(setf (get opil_v2::RANState :definition-)
      "# Message defining the Robot Agent Node status 
Header header
Id robot_id
RobotState agv_msg
# RAN status definitions
uint8 READY = 0
uint8 MOVING = 1
uint8 STOPPED = 2
uint8 ran_status # value defined as above


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: opil_v2/Id
# Message for defining IDs
# numeric ID
uint32 id

# optional description of the id
# description can be:
#   - a name
#   - what is descriped by the id
#   - etc.

string description


================================================================================
MSG: opil_v2/RobotState
# Message defining the Robot / AGV status 
Header header
Id vehicle_id
AssignmentId last_terminated_action
industrial_msgs/RobotStatus robot_status
sensor_msgs/BatteryState battery_state
geometry_msgs/Pose2D current_position
geometry_msgs/Twist current_velocity
geometry_msgs/PolygonStamped footprint

================================================================================
MSG: opil_v2/AssignmentId
# Message for the definition of the ids of an Assignment
uint32 task_id
uint32 action_id
uint32 motion_id

================================================================================
MSG: industrial_msgs/RobotStatus
# The RobotStatus message contains low level status information 
# that is specific to an industrial robot controller

# The header frame ID is not used
Header header

# The robot mode captures the operating mode of the robot.  When in
# manual, remote motion is not possible.
industrial_msgs/RobotMode mode

# Estop status: True if robot is e-stopped.  The drives are disabled
# and motion is not possible.  The e-stop condition must be acknowledged
# and cleared before any motion can begin.
industrial_msgs/TriState e_stopped

# Drive power status: True if drives are powered.  Motion commands will 
# automatically enable the drives if required.  Drive power is not requred
# for possible motion
industrial_msgs/TriState drives_powered

# Motion enabled: True if robot motion is possible.
industrial_msgs/TriState motion_possible

# Motion status: True if robot is in motion, otherwise false
industrial_msgs/TriState in_motion

# Error status: True if there is an error condition on the robot. Motion may
# or may not be affected (see motion_possible)
industrial_msgs/TriState in_error

# Error code: Vendor specific error code (non zero indicates error)
int32 error_code

================================================================================
MSG: industrial_msgs/RobotMode
# The Robot mode message encapsulates the mode/teach state of the robot
# Typically this is controlled by the pendant key switch, but not always

int8 val

# enumerated values
int8 UNKNOWN=-1                 # Unknown or unavailable         
int8 MANUAL=1 			 # Teach OR manual mode
int8 AUTO=2                     # Automatic mode


================================================================================
MSG: industrial_msgs/TriState
# The tri-state captures boolean values with the additional state of unknown

int8 val

# enumerated values

# Unknown or unavailable 
int8 UNKNOWN=-1  

# High state                       
int8 TRUE=1
int8 ON=1
int8 ENABLED=1
int8 HIGH=1
int8 CLOSED=1

# Low state
int8 FALSE=0
int8 OFF=0
int8 DISABLED=0
int8 LOW=0
int8 OPEN=0


================================================================================
MSG: sensor_msgs/BatteryState

# Constants are chosen to match the enums in the linux kernel
# defined in include/linux/power_supply.h as of version 3.7
# The one difference is for style reasons the constants are
# all uppercase not mixed case.

# Power supply status constants
uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0
uint8 POWER_SUPPLY_STATUS_CHARGING = 1
uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2
uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3
uint8 POWER_SUPPLY_STATUS_FULL = 4

# Power supply health constants
uint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0
uint8 POWER_SUPPLY_HEALTH_GOOD = 1
uint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2
uint8 POWER_SUPPLY_HEALTH_DEAD = 3
uint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4
uint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5
uint8 POWER_SUPPLY_HEALTH_COLD = 6
uint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7
uint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8

# Power supply technology (chemistry) constants
uint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0
uint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1
uint8 POWER_SUPPLY_TECHNOLOGY_LION = 2
uint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3
uint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4
uint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5
uint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6

Header  header
float32 voltage          # Voltage in Volts (Mandatory)
float32 current          # Negative when discharging (A)  (If unmeasured NaN)
float32 charge           # Current charge in Ah  (If unmeasured NaN)
float32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)
float32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)
float32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)
uint8   power_supply_status     # The charging status as reported. Values defined above
uint8   power_supply_health     # The battery health metric. Values defined above
uint8   power_supply_technology # The battery chemistry. Values defined above
bool    present          # True if the battery is present

float32[] cell_voltage   # An array of individual cell voltages for each cell in the pack
                         # If individual voltages unknown but number of cells known set each to NaN
string location          # The location into which the battery is inserted. (slot number or plug)
string serial_number     # The best approximation of the battery serial number

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :opil_v2/RANState "2dc33cda2b4054bb83982ac7e5fc4fb8")


