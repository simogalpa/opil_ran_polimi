;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::MotionAssignment)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'MotionAssignment (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::MOTIONASSIGNMENT")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::MOTIONASSIGNMENT"))

(in-package "ROS")
;;//! \htmlinclude MotionAssignment.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mars_agent_physical_robot_msgs::MotionAssignment
  :super ros::object
  :slots (_header _robot_id _point_id _task_id _motion_id _point _is_waypoint _use_orientation _max_velocity _max_acceleration _motion_area _sequence ))

(defmethod mars_agent_physical_robot_msgs::MotionAssignment
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) (instance mars_common_msgs::Id :init))
    ((:point_id __point_id) (instance mars_common_msgs::Id :init))
    ((:task_id __task_id) (instance mars_common_msgs::Id :init))
    ((:motion_id __motion_id) (instance mars_common_msgs::Id :init))
    ((:point __point) (instance geometry_msgs::Pose2D :init))
    ((:is_waypoint __is_waypoint) nil)
    ((:use_orientation __use_orientation) nil)
    ((:max_velocity __max_velocity) (instance geometry_msgs::Twist :init))
    ((:max_acceleration __max_acceleration) (instance geometry_msgs::Accel :init))
    ((:motion_area __motion_area) (instance geometry_msgs::PolygonStamped :init))
    ((:sequence __sequence) (instance mars_agent_physical_robot_msgs::Sequence :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id __robot_id)
   (setq _point_id __point_id)
   (setq _task_id __task_id)
   (setq _motion_id __motion_id)
   (setq _point __point)
   (setq _is_waypoint __is_waypoint)
   (setq _use_orientation __use_orientation)
   (setq _max_velocity __max_velocity)
   (setq _max_acceleration __max_acceleration)
   (setq _motion_area __motion_area)
   (setq _sequence __sequence)
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
  (:point_id
   (&rest __point_id)
   (if (keywordp (car __point_id))
       (send* _point_id __point_id)
     (progn
       (if __point_id (setq _point_id (car __point_id)))
       _point_id)))
  (:task_id
   (&rest __task_id)
   (if (keywordp (car __task_id))
       (send* _task_id __task_id)
     (progn
       (if __task_id (setq _task_id (car __task_id)))
       _task_id)))
  (:motion_id
   (&rest __motion_id)
   (if (keywordp (car __motion_id))
       (send* _motion_id __motion_id)
     (progn
       (if __motion_id (setq _motion_id (car __motion_id)))
       _motion_id)))
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:is_waypoint
   (&optional __is_waypoint)
   (if __is_waypoint (setq _is_waypoint __is_waypoint)) _is_waypoint)
  (:use_orientation
   (&optional __use_orientation)
   (if __use_orientation (setq _use_orientation __use_orientation)) _use_orientation)
  (:max_velocity
   (&rest __max_velocity)
   (if (keywordp (car __max_velocity))
       (send* _max_velocity __max_velocity)
     (progn
       (if __max_velocity (setq _max_velocity (car __max_velocity)))
       _max_velocity)))
  (:max_acceleration
   (&rest __max_acceleration)
   (if (keywordp (car __max_acceleration))
       (send* _max_acceleration __max_acceleration)
     (progn
       (if __max_acceleration (setq _max_acceleration (car __max_acceleration)))
       _max_acceleration)))
  (:motion_area
   (&rest __motion_area)
   (if (keywordp (car __motion_area))
       (send* _motion_area __motion_area)
     (progn
       (if __motion_area (setq _motion_area (car __motion_area)))
       _motion_area)))
  (:sequence
   (&rest __sequence)
   (if (keywordp (car __sequence))
       (send* _sequence __sequence)
     (progn
       (if __sequence (setq _sequence (car __sequence)))
       _sequence)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mars_common_msgs/Id _robot_id
    (send _robot_id :serialization-length)
    ;; mars_common_msgs/Id _point_id
    (send _point_id :serialization-length)
    ;; mars_common_msgs/Id _task_id
    (send _task_id :serialization-length)
    ;; mars_common_msgs/Id _motion_id
    (send _motion_id :serialization-length)
    ;; geometry_msgs/Pose2D _point
    (send _point :serialization-length)
    ;; bool _is_waypoint
    1
    ;; bool _use_orientation
    1
    ;; geometry_msgs/Twist _max_velocity
    (send _max_velocity :serialization-length)
    ;; geometry_msgs/Accel _max_acceleration
    (send _max_acceleration :serialization-length)
    ;; geometry_msgs/PolygonStamped _motion_area
    (send _motion_area :serialization-length)
    ;; mars_agent_physical_robot_msgs/Sequence _sequence
    (send _sequence :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mars_common_msgs/Id _robot_id
       (send _robot_id :serialize s)
     ;; mars_common_msgs/Id _point_id
       (send _point_id :serialize s)
     ;; mars_common_msgs/Id _task_id
       (send _task_id :serialize s)
     ;; mars_common_msgs/Id _motion_id
       (send _motion_id :serialize s)
     ;; geometry_msgs/Pose2D _point
       (send _point :serialize s)
     ;; bool _is_waypoint
       (if _is_waypoint (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_orientation
       (if _use_orientation (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Twist _max_velocity
       (send _max_velocity :serialize s)
     ;; geometry_msgs/Accel _max_acceleration
       (send _max_acceleration :serialize s)
     ;; geometry_msgs/PolygonStamped _motion_area
       (send _motion_area :serialize s)
     ;; mars_agent_physical_robot_msgs/Sequence _sequence
       (send _sequence :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mars_common_msgs/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; mars_common_msgs/Id _point_id
     (send _point_id :deserialize buf ptr-) (incf ptr- (send _point_id :serialization-length))
   ;; mars_common_msgs/Id _task_id
     (send _task_id :deserialize buf ptr-) (incf ptr- (send _task_id :serialization-length))
   ;; mars_common_msgs/Id _motion_id
     (send _motion_id :deserialize buf ptr-) (incf ptr- (send _motion_id :serialization-length))
   ;; geometry_msgs/Pose2D _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; bool _is_waypoint
     (setq _is_waypoint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_orientation
     (setq _use_orientation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Twist _max_velocity
     (send _max_velocity :deserialize buf ptr-) (incf ptr- (send _max_velocity :serialization-length))
   ;; geometry_msgs/Accel _max_acceleration
     (send _max_acceleration :deserialize buf ptr-) (incf ptr- (send _max_acceleration :serialization-length))
   ;; geometry_msgs/PolygonStamped _motion_area
     (send _motion_area :deserialize buf ptr-) (incf ptr- (send _motion_area :serialization-length))
   ;; mars_agent_physical_robot_msgs/Sequence _sequence
     (send _sequence :deserialize buf ptr-) (incf ptr- (send _sequence :serialization-length))
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::MotionAssignment :md5sum-) "d4c5a46f20a838c5a572e0f81ed1d96f")
(setf (get mars_agent_physical_robot_msgs::MotionAssignment :datatype-) "mars_agent_physical_robot_msgs/MotionAssignment")
(setf (get mars_agent_physical_robot_msgs::MotionAssignment :definition-)
      "# Message concerning the assignment of a new Motion command
Header header
mars_common_msgs/Id robot_id
mars_common_msgs/Id point_id
mars_common_msgs/Id task_id
mars_common_msgs/Id motion_id
geometry_msgs/Pose2D point
# TRUE if the point is a waypoint, FALSE if it is a goal
bool is_waypoint
# TRUE if the theta of the point has to be considered
bool use_orientation
geometry_msgs/Twist max_velocity
geometry_msgs/Accel max_acceleration
# defines the area in which the robot can move
geometry_msgs/PolygonStamped motion_area
# the position of the assignment in the sequence
Sequence sequence

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
MSG: mars_common_msgs/Id
# Universally Unique Identifier (UUID)
# A UUID is a 128-bit number used to identify information in computer systems. 
# The term globally unique identifier (GUID) is also used. 
# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier
uint8[16] uuid

# optional description of the id
# description can be:
#   - a name
#   - what is descriped by the id
#   - etc.
string description

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
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
================================================================================
MSG: mars_agent_physical_robot_msgs/Sequence
# Message for defining a sequence.

# Actual position in the sequence. The sequence starts at 1! 
int32 sequence_number
# Overall lenght of the sequence
int32 length

")



(provide :mars_agent_physical_robot_msgs/MotionAssignment "d4c5a46f20a838c5a572e0f81ed1d96f")


