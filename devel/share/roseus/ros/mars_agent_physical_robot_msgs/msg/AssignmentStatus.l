;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::AssignmentStatus)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'AssignmentStatus (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ASSIGNMENTSTATUS")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ASSIGNMENTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude AssignmentStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))


(defclass mars_agent_physical_robot_msgs::AssignmentStatus
  :super ros::object
  :slots (_current_task_id _current_motion_id _current_action_id _last_finished_motion _last_finished_action _footprint ))

(defmethod mars_agent_physical_robot_msgs::AssignmentStatus
  (:init
   (&key
    ((:current_task_id __current_task_id) (instance mars_common_msgs::Id :init))
    ((:current_motion_id __current_motion_id) (instance mars_common_msgs::Id :init))
    ((:current_action_id __current_action_id) (instance mars_common_msgs::Id :init))
    ((:last_finished_motion __last_finished_motion) (instance mars_common_msgs::Id :init))
    ((:last_finished_action __last_finished_action) (instance mars_common_msgs::Id :init))
    ((:footprint __footprint) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _current_task_id __current_task_id)
   (setq _current_motion_id __current_motion_id)
   (setq _current_action_id __current_action_id)
   (setq _last_finished_motion __last_finished_motion)
   (setq _last_finished_action __last_finished_action)
   (setq _footprint __footprint)
   self)
  (:current_task_id
   (&rest __current_task_id)
   (if (keywordp (car __current_task_id))
       (send* _current_task_id __current_task_id)
     (progn
       (if __current_task_id (setq _current_task_id (car __current_task_id)))
       _current_task_id)))
  (:current_motion_id
   (&rest __current_motion_id)
   (if (keywordp (car __current_motion_id))
       (send* _current_motion_id __current_motion_id)
     (progn
       (if __current_motion_id (setq _current_motion_id (car __current_motion_id)))
       _current_motion_id)))
  (:current_action_id
   (&rest __current_action_id)
   (if (keywordp (car __current_action_id))
       (send* _current_action_id __current_action_id)
     (progn
       (if __current_action_id (setq _current_action_id (car __current_action_id)))
       _current_action_id)))
  (:last_finished_motion
   (&rest __last_finished_motion)
   (if (keywordp (car __last_finished_motion))
       (send* _last_finished_motion __last_finished_motion)
     (progn
       (if __last_finished_motion (setq _last_finished_motion (car __last_finished_motion)))
       _last_finished_motion)))
  (:last_finished_action
   (&rest __last_finished_action)
   (if (keywordp (car __last_finished_action))
       (send* _last_finished_action __last_finished_action)
     (progn
       (if __last_finished_action (setq _last_finished_action (car __last_finished_action)))
       _last_finished_action)))
  (:footprint
   (&rest __footprint)
   (if (keywordp (car __footprint))
       (send* _footprint __footprint)
     (progn
       (if __footprint (setq _footprint (car __footprint)))
       _footprint)))
  (:serialization-length
   ()
   (+
    ;; mars_common_msgs/Id _current_task_id
    (send _current_task_id :serialization-length)
    ;; mars_common_msgs/Id _current_motion_id
    (send _current_motion_id :serialization-length)
    ;; mars_common_msgs/Id _current_action_id
    (send _current_action_id :serialization-length)
    ;; mars_common_msgs/Id _last_finished_motion
    (send _last_finished_motion :serialization-length)
    ;; mars_common_msgs/Id _last_finished_action
    (send _last_finished_action :serialization-length)
    ;; geometry_msgs/PolygonStamped _footprint
    (send _footprint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mars_common_msgs/Id _current_task_id
       (send _current_task_id :serialize s)
     ;; mars_common_msgs/Id _current_motion_id
       (send _current_motion_id :serialize s)
     ;; mars_common_msgs/Id _current_action_id
       (send _current_action_id :serialize s)
     ;; mars_common_msgs/Id _last_finished_motion
       (send _last_finished_motion :serialize s)
     ;; mars_common_msgs/Id _last_finished_action
       (send _last_finished_action :serialize s)
     ;; geometry_msgs/PolygonStamped _footprint
       (send _footprint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mars_common_msgs/Id _current_task_id
     (send _current_task_id :deserialize buf ptr-) (incf ptr- (send _current_task_id :serialization-length))
   ;; mars_common_msgs/Id _current_motion_id
     (send _current_motion_id :deserialize buf ptr-) (incf ptr- (send _current_motion_id :serialization-length))
   ;; mars_common_msgs/Id _current_action_id
     (send _current_action_id :deserialize buf ptr-) (incf ptr- (send _current_action_id :serialization-length))
   ;; mars_common_msgs/Id _last_finished_motion
     (send _last_finished_motion :deserialize buf ptr-) (incf ptr- (send _last_finished_motion :serialization-length))
   ;; mars_common_msgs/Id _last_finished_action
     (send _last_finished_action :deserialize buf ptr-) (incf ptr- (send _last_finished_action :serialization-length))
   ;; geometry_msgs/PolygonStamped _footprint
     (send _footprint :deserialize buf ptr-) (incf ptr- (send _footprint :serialization-length))
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::AssignmentStatus :md5sum-) "51331f0d54af7e13d2a0c817444fec5e")
(setf (get mars_agent_physical_robot_msgs::AssignmentStatus :datatype-) "mars_agent_physical_robot_msgs/AssignmentStatus")
(setf (get mars_agent_physical_robot_msgs::AssignmentStatus :definition-)
      "mars_common_msgs/Id current_task_id
mars_common_msgs/Id current_motion_id
mars_common_msgs/Id current_action_id
mars_common_msgs/Id last_finished_motion
mars_common_msgs/Id last_finished_action
geometry_msgs/PolygonStamped footprint

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
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :mars_agent_physical_robot_msgs/AssignmentStatus "51331f0d54af7e13d2a0c817444fec5e")


