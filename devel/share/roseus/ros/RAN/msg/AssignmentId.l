;; Auto-generated. Do not edit!


(when (boundp 'RAN::AssignmentId)
  (if (not (find-package "RAN"))
    (make-package "RAN"))
  (shadow 'AssignmentId (find-package "RAN")))
(unless (find-package "RAN::ASSIGNMENTID")
  (make-package "RAN::ASSIGNMENTID"))

(in-package "ROS")
;;//! \htmlinclude AssignmentId.msg.html
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))


(defclass RAN::AssignmentId
  :super ros::object
  :slots (_task_id _action_id _motion_id ))

(defmethod RAN::AssignmentId
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

(setf (get RAN::AssignmentId :md5sum-) "4202b775afdccaf886a80f2adcd776fa")
(setf (get RAN::AssignmentId :datatype-) "RAN/AssignmentId")
(setf (get RAN::AssignmentId :definition-)
      "# Message for the definition of the ids of an Assignment
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



(provide :RAN/AssignmentId "4202b775afdccaf886a80f2adcd776fa")


