;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::RobotDescription)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'RobotDescription (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::ROBOTDESCRIPTION")
  (make-package "OPIL_V2::ROBOTDESCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude RobotDescription.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opil_v2::RobotDescription
  :super ros::object
  :slots (_header _robot_id _agv_msg ))

(defmethod opil_v2::RobotDescription
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) (instance opil_v2::Id :init))
    ((:agv_msg __agv_msg) (instance opil_v2::RobotDescriptionAGV :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id __robot_id)
   (setq _agv_msg __agv_msg)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; opil_v2/Id _robot_id
    (send _robot_id :serialization-length)
    ;; opil_v2/RobotDescriptionAGV _agv_msg
    (send _agv_msg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opil_v2/Id _robot_id
       (send _robot_id :serialize s)
     ;; opil_v2/RobotDescriptionAGV _agv_msg
       (send _agv_msg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opil_v2/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; opil_v2/RobotDescriptionAGV _agv_msg
     (send _agv_msg :deserialize buf ptr-) (incf ptr- (send _agv_msg :serialization-length))
   ;;
   self)
  )

(setf (get opil_v2::RobotDescription :md5sum-) "820816697a26fe0826984b872430e14c")
(setf (get opil_v2::RobotDescription :datatype-) "opil_v2/RobotDescription")
(setf (get opil_v2::RobotDescription :definition-)
      "Header header
Id robot_id
RobotDescriptionAGV agv_msg

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
MSG: opil_v2/RobotDescriptionAGV
Header header
Id vehicle_id
float32 left_size
float32 right_size
float32 front_size
float32 rear_size
float32 min_height
float32 max_height
float32 payload
float32 max_pos_x_vel
float32 max_neg_x_vel
float32 max_pos_x_acc
float32 max_neg_x_acc
float32 max_pos_y_vel
float32 max_neg_y_vel
float32 max_pos_y_acc
float32 max_neg_y_acc
float32 max_pos_ang_vel
float32 max_neg_ang_vel
float32 velocity_control_sensitivity
float32 min_turning_radius
float32 batt_capacity
float32 batt_max_voltage
string vehicle_type
string vendor 
RobotAction[] action_capability

================================================================================
MSG: opil_v2/RobotAction
# definition of all the possible actionsmars_agent_physical_robot_msgs
uint8 CATEGORY_UNDEFINED = 0
uint8 CATEGORY_NONE = 5
uint8 CATEGORY_LOAD = 10
uint8 CATEGORY_MANUAL_LOAD_START = 11
uint8 CATEGORY_MANUAL_LOAD_DONE = 12
uint8 CATEGORY_UNLOAD = 20
uint8 CATEGORY_MANUAL_UNLOAD_START = 21
uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22
uint8 CATEGORY_START_CHARGING = 30
uint8 CATEGORY_STOP_CHARGING = 31
# ...


# Category of the action which has to be performed
uint8 category
# Defines the robot specific action which has to be performed. 
# The specific actions must be defined by manufacturer. 
uint8 action
Tuple[] attributes
# Optional description of the action. E.g.: unload left
string description


================================================================================
MSG: opil_v2/Tuple
string type
string name
string value


")



(provide :opil_v2/RobotDescription "820816697a26fe0826984b872430e14c")


