;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::ActionDefinition)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'ActionDefinition (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::ACTIONDEFINITION")
  (make-package "OPIL_V2::ACTIONDEFINITION"))

(in-package "ROS")
;;//! \htmlinclude ActionDefinition.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opil_v2::ActionDefinition
  :super ros::object
  :slots (_header _robot_id _action_id _task_id _action ))

(defmethod opil_v2::ActionDefinition
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) (instance opil_v2::Id :init))
    ((:action_id __action_id) (instance opil_v2::Id :init))
    ((:task_id __task_id) (instance opil_v2::Id :init))
    ((:action __action) (instance opil_v2::RobotAction :init))
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
    ;; opil_v2/Id _robot_id
    (send _robot_id :serialization-length)
    ;; opil_v2/Id _action_id
    (send _action_id :serialization-length)
    ;; opil_v2/Id _task_id
    (send _task_id :serialization-length)
    ;; opil_v2/RobotAction _action
    (send _action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opil_v2/Id _robot_id
       (send _robot_id :serialize s)
     ;; opil_v2/Id _action_id
       (send _action_id :serialize s)
     ;; opil_v2/Id _task_id
       (send _task_id :serialize s)
     ;; opil_v2/RobotAction _action
       (send _action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opil_v2/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; opil_v2/Id _action_id
     (send _action_id :deserialize buf ptr-) (incf ptr- (send _action_id :serialization-length))
   ;; opil_v2/Id _task_id
     (send _task_id :deserialize buf ptr-) (incf ptr- (send _task_id :serialization-length))
   ;; opil_v2/RobotAction _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;;
   self)
  )

(setf (get opil_v2::ActionDefinition :md5sum-) "251964ecde4dcc6d2653784d4aa1be70")
(setf (get opil_v2::ActionDefinition :datatype-) "opil_v2/ActionDefinition")
(setf (get opil_v2::ActionDefinition :definition-)
      "# Message for the definition of an Action
std_msgs/Header header
Id robot_id
Id action_id
Id task_id
#definition of the action
RobotAction action


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



(provide :opil_v2/ActionDefinition "251964ecde4dcc6d2653784d4aa1be70")


