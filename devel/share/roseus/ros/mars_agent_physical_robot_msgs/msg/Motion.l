;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::Motion)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'Motion (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::MOTION")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::MOTION"))

(in-package "ROS")
;;//! \htmlinclude Motion.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mars_agent_physical_robot_msgs::Motion
  :super ros::object
  :slots (_current_position _current_velocity ))

(defmethod mars_agent_physical_robot_msgs::Motion
  (:init
   (&key
    ((:current_position __current_position) (instance geometry_msgs::PoseStamped :init))
    ((:current_velocity __current_velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _current_position __current_position)
   (setq _current_velocity __current_velocity)
   self)
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
    ;; geometry_msgs/PoseStamped _current_position
    (send _current_position :serialization-length)
    ;; geometry_msgs/Twist _current_velocity
    (send _current_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _current_position
       (send _current_position :serialize s)
     ;; geometry_msgs/Twist _current_velocity
       (send _current_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _current_position
     (send _current_position :deserialize buf ptr-) (incf ptr- (send _current_position :serialization-length))
   ;; geometry_msgs/Twist _current_velocity
     (send _current_velocity :deserialize buf ptr-) (incf ptr- (send _current_velocity :serialization-length))
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::Motion :md5sum-) "9adb824f5607bc0f252b799bfabd28e3")
(setf (get mars_agent_physical_robot_msgs::Motion :datatype-) "mars_agent_physical_robot_msgs/Motion")
(setf (get mars_agent_physical_robot_msgs::Motion :definition-)
      "geometry_msgs/PoseStamped current_position
geometry_msgs/Twist current_velocity

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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



(provide :mars_agent_physical_robot_msgs/Motion "9adb824f5607bc0f252b799bfabd28e3")


