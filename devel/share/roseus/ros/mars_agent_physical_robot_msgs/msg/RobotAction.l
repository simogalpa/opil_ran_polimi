;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::RobotAction)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'RobotAction (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))

(in-package "ROS")
;;//! \htmlinclude RobotAction.msg.html
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))


(intern "*CATEGORY_UNDEFINED*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_UNDEFINED* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_UNDEFINED* 0)
(intern "*CATEGORY_NONE*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_NONE* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_NONE* 5)
(intern "*CATEGORY_LOAD*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_LOAD* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_LOAD* 10)
(intern "*CATEGORY_MANUAL_LOAD_START*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_MANUAL_LOAD_START* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_MANUAL_LOAD_START* 11)
(intern "*CATEGORY_MANUAL_LOAD_DONE*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_MANUAL_LOAD_DONE* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_MANUAL_LOAD_DONE* 12)
(intern "*CATEGORY_UNLOAD*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_UNLOAD* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_UNLOAD* 20)
(intern "*CATEGORY_MANUAL_UNLOAD_START*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_MANUAL_UNLOAD_START* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_MANUAL_UNLOAD_START* 21)
(intern "*CATEGORY_MANUAL_UNLOAD_DONE*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_MANUAL_UNLOAD_DONE* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_MANUAL_UNLOAD_DONE* 22)
(intern "*CATEGORY_START_CHARGING*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_START_CHARGING* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_START_CHARGING* 30)
(intern "*CATEGORY_STOP_CHARGING*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(shadow '*CATEGORY_STOP_CHARGING* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTACTION"))
(defconstant mars_agent_physical_robot_msgs::RobotAction::*CATEGORY_STOP_CHARGING* 31)
(defclass mars_agent_physical_robot_msgs::RobotAction
  :super ros::object
  :slots (_category _action _attributes _description ))

(defmethod mars_agent_physical_robot_msgs::RobotAction
  (:init
   (&key
    ((:category __category) 0)
    ((:action __action) 0)
    ((:attributes __attributes) (let (r) (dotimes (i 0) (push (instance mars_common_msgs::Tuple :init) r)) r))
    ((:description __description) "")
    )
   (send-super :init)
   (setq _category (round __category))
   (setq _action (round __action))
   (setq _attributes __attributes)
   (setq _description (string __description))
   self)
  (:category
   (&optional __category)
   (if __category (setq _category __category)) _category)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:attributes
   (&rest __attributes)
   (if (keywordp (car __attributes))
       (send* _attributes __attributes)
     (progn
       (if __attributes (setq _attributes (car __attributes)))
       _attributes)))
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; uint8 _category
    1
    ;; uint8 _action
    1
    ;; mars_common_msgs/Tuple[] _attributes
    (apply #'+ (send-all _attributes :serialization-length)) 4
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _category
       (write-byte _category s)
     ;; uint8 _action
       (write-byte _action s)
     ;; mars_common_msgs/Tuple[] _attributes
     (write-long (length _attributes) s)
     (dolist (elem _attributes)
       (send elem :serialize s)
       )
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _category
     (setq _category (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mars_common_msgs/Tuple[] _attributes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _attributes (let (r) (dotimes (i n) (push (instance mars_common_msgs::Tuple :init) r)) r))
     (dolist (elem- _attributes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::RobotAction :md5sum-) "9d6573f0dd507d2eb40dd1e6516c59f5")
(setf (get mars_agent_physical_robot_msgs::RobotAction :datatype-) "mars_agent_physical_robot_msgs/RobotAction")
(setf (get mars_agent_physical_robot_msgs::RobotAction :definition-)
      "# definition of all the possible actionsmars_agent_physical_robot_msgs
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



(provide :mars_agent_physical_robot_msgs/RobotAction "9d6573f0dd507d2eb40dd1e6516c59f5")


