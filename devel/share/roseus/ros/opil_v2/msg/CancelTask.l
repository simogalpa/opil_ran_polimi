;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::CancelTask)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'CancelTask (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::CANCELTASK")
  (make-package "OPIL_V2::CANCELTASK"))

(in-package "ROS")
;;//! \htmlinclude CancelTask.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opil_v2::CancelTask
  :super ros::object
  :slots (_header _robot_id _task_id _action_id _motion_id ))

(defmethod opil_v2::CancelTask
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) (instance opil_v2::Id :init))
    ((:task_id __task_id) (instance opil_v2::Id :init))
    ((:action_id __action_id) (instance opil_v2::Id :init))
    ((:motion_id __motion_id) (instance opil_v2::Id :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id __robot_id)
   (setq _task_id __task_id)
   (setq _action_id __action_id)
   (setq _motion_id __motion_id)
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; opil_v2/Id _robot_id
    (send _robot_id :serialization-length)
    ;; opil_v2/Id _task_id
    (send _task_id :serialization-length)
    ;; opil_v2/Id _action_id
    (send _action_id :serialization-length)
    ;; opil_v2/Id _motion_id
    (send _motion_id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opil_v2/Id _robot_id
       (send _robot_id :serialize s)
     ;; opil_v2/Id _task_id
       (send _task_id :serialize s)
     ;; opil_v2/Id _action_id
       (send _action_id :serialize s)
     ;; opil_v2/Id _motion_id
       (send _motion_id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opil_v2/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; opil_v2/Id _task_id
     (send _task_id :deserialize buf ptr-) (incf ptr- (send _task_id :serialization-length))
   ;; opil_v2/Id _action_id
     (send _action_id :deserialize buf ptr-) (incf ptr- (send _action_id :serialization-length))
   ;; opil_v2/Id _motion_id
     (send _motion_id :deserialize buf ptr-) (incf ptr- (send _motion_id :serialization-length))
   ;;
   self)
  )

(setf (get opil_v2::CancelTask :md5sum-) "40a0b6cb455a9001a19467ac472b07a0")
(setf (get opil_v2::CancelTask :datatype-) "opil_v2/CancelTask")
(setf (get opil_v2::CancelTask :definition-)
      "# Message for deleting a task
Header header
Id robot_id
# task ID instead of action id because the message deletes the whole task
# the task is a sequence of motions and actions
Id task_id
Id action_id
Id motion_id

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


")



(provide :opil_v2/CancelTask "40a0b6cb455a9001a19467ac472b07a0")


