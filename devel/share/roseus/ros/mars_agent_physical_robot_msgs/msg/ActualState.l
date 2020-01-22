;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::ActualState)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'ActualState (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))

(in-package "ROS")
;;//! \htmlinclude ActualState.msg.html
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MBS_NO_POSITION*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_NO_POSITION* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_NO_POSITION* 0)
(intern "*MBS_WAITING_FOR_INIT*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_WAITING_FOR_INIT* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_WAITING_FOR_INIT* 1)
(intern "*MBS_READY*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_READY* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_READY* 2)
(intern "*MBS_FIRST_ROTATION*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_FIRST_ROTATION* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_FIRST_ROTATION* 3)
(intern "*MBS_MOVING*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_MOVING* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_MOVING* 4)
(intern "*MBS_SECOND_ROTATION*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_SECOND_ROTATION* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_SECOND_ROTATION* 5)
(intern "*MBS_FINISHED*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_FINISHED* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_FINISHED* 6)
(intern "*MBS_FETCH_NEXT_INSTRUCTION*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_FETCH_NEXT_INSTRUCTION* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_FETCH_NEXT_INSTRUCTION* 7)
(intern "*MBS_EXECUTE_ACTION*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_EXECUTE_ACTION* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_EXECUTE_ACTION* 8)
(intern "*MBS_OBSTACLE*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_OBSTACLE* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_OBSTACLE* 9)
(intern "*MBS_ERROR*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(shadow '*MBS_ERROR* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ACTUALSTATE"))
(defconstant mars_agent_physical_robot_msgs::ActualState::*MBS_ERROR* 10)
(defclass mars_agent_physical_robot_msgs::ActualState
  :super ros::object
  :slots (_header _robot_id _MoveBaseSimpleState ))

(defmethod mars_agent_physical_robot_msgs::ActualState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) (instance mars_common_msgs::Id :init))
    ((:MoveBaseSimpleState __MoveBaseSimpleState) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id __robot_id)
   (setq _MoveBaseSimpleState (round __MoveBaseSimpleState))
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
  (:MoveBaseSimpleState
   (&optional __MoveBaseSimpleState)
   (if __MoveBaseSimpleState (setq _MoveBaseSimpleState __MoveBaseSimpleState)) _MoveBaseSimpleState)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mars_common_msgs/Id _robot_id
    (send _robot_id :serialization-length)
    ;; uint8 _MoveBaseSimpleState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mars_common_msgs/Id _robot_id
       (send _robot_id :serialize s)
     ;; uint8 _MoveBaseSimpleState
       (write-byte _MoveBaseSimpleState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mars_common_msgs/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; uint8 _MoveBaseSimpleState
     (setq _MoveBaseSimpleState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::ActualState :md5sum-) "218dfb6147c7753072d56e5c9678828c")
(setf (get mars_agent_physical_robot_msgs::ActualState :datatype-) "mars_agent_physical_robot_msgs/ActualState")
(setf (get mars_agent_physical_robot_msgs::ActualState :definition-)
      "# Message for the Actual State
std_msgs/Header header
mars_common_msgs/Id robot_id
# Definition of all possible States
uint8 MBS_NO_POSITION = 0
uint8 MBS_WAITING_FOR_INIT = 1
uint8 MBS_READY = 2
uint8 MBS_FIRST_ROTATION = 3
uint8 MBS_MOVING = 4
uint8 MBS_SECOND_ROTATION = 5
uint8 MBS_FINISHED = 6
uint8 MBS_FETCH_NEXT_INSTRUCTION = 7
uint8 MBS_EXECUTE_ACTION = 8
uint8 MBS_OBSTACLE = 9
uint8 MBS_ERROR = 10
uint8 MoveBaseSimpleState

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

")



(provide :mars_agent_physical_robot_msgs/ActualState "218dfb6147c7753072d56e5c9678828c")


