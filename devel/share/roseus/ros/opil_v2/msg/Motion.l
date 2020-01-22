;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::Motion)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'Motion (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::MOTION")
  (make-package "OPIL_V2::MOTION"))

(in-package "ROS")
;;//! \htmlinclude Motion.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opil_v2::Motion
  :super ros::object
  :slots (_header _current_position _current_velocity ))

(defmethod opil_v2::Motion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_position __current_position) (instance geometry_msgs::Pose2D :init))
    ((:current_velocity __current_velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_position __current_position)
   (setq _current_velocity __current_velocity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_position
   (&rest __current_position)
   (if (keywordp (car __current_position))
       (send* _current_position __current_position)
     (progn
       (if __current_position (setq _current_position (car __current_position)))
       _current_position)))
  (:current_velocity
   (&rest __current_velocity)
   (if (keywordp (car __current_velocity))
       (send* _current_velocity __current_velocity)
     (progn
       (if __current_velocity (setq _current_velocity (car __current_velocity)))
       _current_velocity)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose2D _current_position
    (send _current_position :serialization-length)
    ;; geometry_msgs/Twist _current_velocity
    (send _current_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose2D _current_position
       (send _current_position :serialize s)
     ;; geometry_msgs/Twist _current_velocity
       (send _current_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose2D _current_position
     (send _current_position :deserialize buf ptr-) (incf ptr- (send _current_position :serialization-length))
   ;; geometry_msgs/Twist _current_velocity
     (send _current_velocity :deserialize buf ptr-) (incf ptr- (send _current_velocity :serialization-length))
   ;;
   self)
  )

(setf (get opil_v2::Motion :md5sum-) "f80dfb403c45c5748d1fa8b9b55f92db")
(setf (get opil_v2::Motion :datatype-) "opil_v2/Motion")
(setf (get opil_v2::Motion :definition-)
      "std_msgs/Header header
geometry_msgs/Pose2D current_position
geometry_msgs/Twist current_velocity

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
")



(provide :opil_v2/Motion "f80dfb403c45c5748d1fa8b9b55f92db")


