;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::ActionAssignment)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'ActionAssignment (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTIONASSIGNMENT")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTIONASSIGNMENT"))

(in-package "ROS")
;;//! \htmlinclude ActionAssignment.msg.html
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))


(defclass mars_agent_physical_robot_msgs::ActionAssignment
  :super ros::object
  :slots (_robot_id _action_id _task_id _sequence _robot_action ))

(defmethod mars_agent_physical_robot_msgs::ActionAssignment
  (:init
   (&key
    ((:robot_id __robot_id) (instance mars_common_msgs::Id :init))
    ((:action_id __action_id) (instance mars_common_msgs::Id :init))
    ((:task_id __task_id) (instance mars_common_msgs::Id :init))
    ((:sequence __sequence) (instance mars_agent_physical_robot_msgs::Sequence :init))
    ((:robot_action __robot_action) (instance mars_agent_physical_robot_msgs::RobotAction :init))
    )
   (send-super :init)
   (setq _robot_id __robot_id)
   (setq _action_id __action_id)
   (setq _task_id __task_id)
   (setq _sequence __sequence)
   (setq _robot_action __robot_action)
   self)
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
  (:sequence
   (&rest __sequence)
   (if (keywordp (car __sequence))
       (send* _sequence __sequence)
     (progn
       (if __sequence (setq _sequence (car __sequence)))
       _sequence)))
  (:robot_action
   (&rest __robot_action)
   (if (keywordp (car __robot_action))
       (send* _robot_action __robot_action)
     (progn
       (if __robot_action (setq _robot_action (car __robot_action)))
       _robot_action)))
  (:serialization-length
   ()
   (+
    ;; mars_common_msgs/Id _robot_id
    (send _robot_id :serialization-length)
    ;; mars_common_msgs/Id _action_id
    (send _action_id :serialization-length)
    ;; mars_common_msgs/Id _task_id
    (send _task_id :serialization-length)
    ;; mars_agent_physical_robot_msgs/Sequence _sequence
    (send _sequence :serialization-length)
    ;; mars_agent_physical_robot_msgs/RobotAction _robot_action
    (send _robot_action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mars_common_msgs/Id _robot_id
       (send _robot_id :serialize s)
     ;; mars_common_msgs/Id _action_id
       (send _action_id :serialize s)
     ;; mars_common_msgs/Id _task_id
       (send _task_id :serialize s)
     ;; mars_agent_physical_robot_msgs/Sequence _sequence
       (send _sequence :serialize s)
     ;; mars_agent_physical_robot_msgs/RobotAction _robot_action
       (send _robot_action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mars_common_msgs/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; mars_common_msgs/Id _action_id
     (send _action_id :deserialize buf ptr-) (incf ptr- (send _action_id :serialization-length))
   ;; mars_common_msgs/Id _task_id
     (send _task_id :deserialize buf ptr-) (incf ptr- (send _task_id :serialization-length))
   ;; mars_agent_physical_robot_msgs/Sequence _sequence
     (send _sequence :deserialize buf ptr-) (incf ptr- (send _sequence :serialization-length))
   ;; mars_agent_physical_robot_msgs/RobotAction _robot_action
     (send _robot_action :deserialize buf ptr-) (incf ptr- (send _robot_action :serialization-length))
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::ActionAssignment :md5sum-) "efed3373da3eca18595f4459a9e9b329")
(setf (get mars_agent_physical_robot_msgs::ActionAssignment :datatype-) "mars_agent_physical_robot_msgs/ActionAssignment")
(setf (get mars_agent_physical_robot_msgs::ActionAssignment :definition-)
      "# Message for the definition of an Action
mars_common_msgs/Id robot_id
mars_common_msgs/Id action_id
mars_common_msgs/Id task_id
# Position of the action within the order
Sequence sequence
RobotAction robot_action

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
MSG: mars_agent_physical_robot_msgs/Sequence
# Message for defining a sequence.

# Actual position in the sequence. The sequence starts at 1! 
int32 sequence_number
# Overall lenght of the sequence
int32 length

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



(provide :mars_agent_physical_robot_msgs/ActionAssignment "efed3373da3eca18595f4459a9e9b329")


