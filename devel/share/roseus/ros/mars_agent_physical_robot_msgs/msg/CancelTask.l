;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::CancelTask)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'CancelTask (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::CANCELTASK")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::CANCELTASK"))

(in-package "ROS")
;;//! \htmlinclude CancelTask.msg.html
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))


(defclass mars_agent_physical_robot_msgs::CancelTask
  :super ros::object
  :slots (_task_id _action_id _motion_id ))

(defmethod mars_agent_physical_robot_msgs::CancelTask
  (:init
   (&key
    ((:task_id __task_id) (instance mars_common_msgs::Id :init))
    ((:action_id __action_id) (instance mars_common_msgs::Id :init))
    ((:motion_id __motion_id) (instance mars_common_msgs::Id :init))
    )
   (send-super :init)
   (setq _task_id __task_id)
   (setq _action_id __action_id)
   (setq _motion_id __motion_id)
   self)
  (:task_id
   (&rest __task_id)
   (if (keywordp (car __task_id))
       (send* _task_id __task_id)
     (progn
       (if __task_id (setq _task_id (car __task_id)))
       _task_id)))
  (:action_id
   (&rest __action_id)
   (if (keywordp (car __action_id))
       (send* _action_id __action_id)
     (progn
       (if __action_id (setq _action_id (car __action_id)))
       _action_id)))
  (:motion_id
   (&rest __motion_id)
   (if (keywordp (car __motion_id))
       (send* _motion_id __motion_id)
     (progn
       (if __motion_id (setq _motion_id (car __motion_id)))
       _motion_id)))
  (:serialization-length
   ()
   (+
    ;; mars_common_msgs/Id _task_id
    (send _task_id :serialization-length)
    ;; mars_common_msgs/Id _action_id
    (send _action_id :serialization-length)
    ;; mars_common_msgs/Id _motion_id
    (send _motion_id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mars_common_msgs/Id _task_id
       (send _task_id :serialize s)
     ;; mars_common_msgs/Id _action_id
       (send _action_id :serialize s)
     ;; mars_common_msgs/Id _motion_id
       (send _motion_id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mars_common_msgs/Id _task_id
     (send _task_id :deserialize buf ptr-) (incf ptr- (send _task_id :serialization-length))
   ;; mars_common_msgs/Id _action_id
     (send _action_id :deserialize buf ptr-) (incf ptr- (send _action_id :serialization-length))
   ;; mars_common_msgs/Id _motion_id
     (send _motion_id :deserialize buf ptr-) (incf ptr- (send _motion_id :serialization-length))
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::CancelTask :md5sum-) "4202b775afdccaf886a80f2adcd776fa")
(setf (get mars_agent_physical_robot_msgs::CancelTask :datatype-) "mars_agent_physical_robot_msgs/CancelTask")
(setf (get mars_agent_physical_robot_msgs::CancelTask :definition-)
      "# task ID instead of action id because the message deletes the whole task
# the task is a sequence of motions and actions
mars_common_msgs/Id task_id
mars_common_msgs/Id action_id
mars_common_msgs/Id motion_id

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



(provide :mars_agent_physical_robot_msgs/CancelTask "4202b775afdccaf886a80f2adcd776fa")


