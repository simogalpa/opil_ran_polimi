;; Auto-generated. Do not edit!


(when (boundp 'RAN::ActionDefinition)
  (if (not (find-package "RAN"))
    (make-package "RAN"))
  (shadow 'ActionDefinition (find-package "RAN")))
(unless (find-package "RAN::ACTIONDEFINITION")
  (make-package "RAN::ACTIONDEFINITION"))

(in-package "ROS")
;;//! \htmlinclude ActionDefinition.msg.html
(if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (ros::roseus-add-msgs "mars_agent_physical_robot_msgs"))
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass RAN::ActionDefinition
  :super ros::object
  :slots (_header _robot_id _action_id _task_id _action ))

(defmethod RAN::ActionDefinition
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) (instance mars_common_msgs::Id :init))
    ((:action_id __action_id) (instance mars_common_msgs::Id :init))
    ((:task_id __task_id) (instance mars_common_msgs::Id :init))
    ((:action __action) (instance mars_agent_physical_robot_msgs::RobotAction :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id __robot_id)
   (setq _action_id __action_id)
   (setq _task_id __task_id)
   (setq _action __action)
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
  (:action_id
   (&rest __action_id)
   (if (keywordp (car __action_id))
       (send* _action_id __action_id)
     (progn
       (if __action_id (setq _action_id (car __action_id)))
       _action_id)))
  (:task_id
   (&rest __task_id)
   (if (keywordp (car __task_id))
       (send* _task_id __task_id)
     (progn
       (if __task_id (setq _task_id (car __task_id)))
       _task_id)))
  (:action
   (&rest __action)
   (if (keywordp (car __action))
       (send* _action __action)
     (progn
       (if __action (setq _action (car __action)))
       _action)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mars_common_msgs/Id _robot_id
    (send _robot_id :serialization-length)
    ;; mars_common_msgs/Id _action_id
    (send _action_id :serialization-length)
    ;; mars_common_msgs/Id _task_id
    (send _task_id :serialization-length)
    ;; mars_agent_physical_robot_msgs/RobotAction _action
    (send _action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mars_common_msgs/Id _robot_id
       (send _robot_id :serialize s)
     ;; mars_common_msgs/Id _action_id
       (send _action_id :serialize s)
     ;; mars_common_msgs/Id _task_id
       (send _task_id :serialize s)
     ;; mars_agent_physical_robot_msgs/RobotAction _action
       (send _action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mars_common_msgs/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; mars_common_msgs/Id _action_id
     (send _action_id :deserialize buf ptr-) (incf ptr- (send _action_id :serialization-length))
   ;; mars_common_msgs/Id _task_id
     (send _task_id :deserialize buf ptr-) (incf ptr- (send _task_id :serialization-length))
   ;; mars_agent_physical_robot_msgs/RobotAction _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;;
   self)
  )

(setf (get RAN::ActionDefinition :md5sum-) "d4212812993a8c69496c8685c459e242")
(setf (get RAN::ActionDefinition :datatype-) "RAN/ActionDefinition")
(setf (get RAN::ActionDefinition :definition-)
      "# Message for the definition of an Action
std_msgs/Header header
mars_common_msgs/Id robot_id
mars_common_msgs/Id action_id
mars_common_msgs/Id task_id
#definition of the action
mars_agent_physical_robot_msgs/RobotAction action


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
MSG: mars_agent_physical_robot_msgs/RobotAction
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
mars_common_msgs/Tuple[] attributes
# Optional description of the action. E.g.: unload left
string description


================================================================================
MSG: mars_common_msgs/Tuple
string type
string name
string value
")



(provide :RAN/ActionDefinition "d4212812993a8c69496c8685c459e242")


