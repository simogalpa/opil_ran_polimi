;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::AssignmentStatus)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'AssignmentStatus (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::ASSIGNMENTSTATUS")
  (make-package "OPIL_V2::ASSIGNMENTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude AssignmentStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opil_v2::AssignmentStatus
  :super ros::object
  :slots (_header _robot_id _current_task_id _current_motion_id _current_action_id _last_finished_motion _last_finished_action _assignment_queue _footprint ))

(defmethod opil_v2::AssignmentStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) (instance opil_v2::Id :init))
    ((:current_task_id __current_task_id) (instance opil_v2::Id :init))
    ((:current_motion_id __current_motion_id) (instance opil_v2::Id :init))
    ((:current_action_id __current_action_id) (instance opil_v2::Id :init))
    ((:last_finished_motion __last_finished_motion) (instance opil_v2::Id :init))
    ((:last_finished_action __last_finished_action) (instance opil_v2::Id :init))
    ((:assignment_queue __assignment_queue) (let (r) (dotimes (i 0) (push (instance opil_v2::AssignmentId :init) r)) r))
    ((:footprint __footprint) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id __robot_id)
   (setq _current_task_id __current_task_id)
   (setq _current_motion_id __current_motion_id)
   (setq _current_action_id __current_action_id)
   (setq _last_finished_motion __last_finished_motion)
   (setq _last_finished_action __last_finished_action)
   (setq _assignment_queue __assignment_queue)
   (setq _footprint __footprint)
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
  (:assignment_queue
   (&rest __assignment_queue)
   (if (keywordp (car __assignment_queue))
       (send* _assignment_queue __assignment_queue)
     (progn
       (if __assignment_queue (setq _assignment_queue (car __assignment_queue)))
       _assignment_queue)))
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; opil_v2/Id _robot_id
    (send _robot_id :serialization-length)
    ;; opil_v2/Id _current_task_id
    (send _current_task_id :serialization-length)
    ;; opil_v2/Id _current_motion_id
    (send _current_motion_id :serialization-length)
    ;; opil_v2/Id _current_action_id
    (send _current_action_id :serialization-length)
    ;; opil_v2/Id _last_finished_motion
    (send _last_finished_motion :serialization-length)
    ;; opil_v2/Id _last_finished_action
    (send _last_finished_action :serialization-length)
    ;; opil_v2/AssignmentId[] _assignment_queue
    (apply #'+ (send-all _assignment_queue :serialization-length)) 4
    ;; geometry_msgs/PolygonStamped _footprint
    (send _footprint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opil_v2/Id _robot_id
       (send _robot_id :serialize s)
     ;; opil_v2/Id _current_task_id
       (send _current_task_id :serialize s)
     ;; opil_v2/Id _current_motion_id
       (send _current_motion_id :serialize s)
     ;; opil_v2/Id _current_action_id
       (send _current_action_id :serialize s)
     ;; opil_v2/Id _last_finished_motion
       (send _last_finished_motion :serialize s)
     ;; opil_v2/Id _last_finished_action
       (send _last_finished_action :serialize s)
     ;; opil_v2/AssignmentId[] _assignment_queue
     (write-long (length _assignment_queue) s)
     (dolist (elem _assignment_queue)
       (send elem :serialize s)
       )
     ;; geometry_msgs/PolygonStamped _footprint
       (send _footprint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opil_v2/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; opil_v2/Id _current_task_id
     (send _current_task_id :deserialize buf ptr-) (incf ptr- (send _current_task_id :serialization-length))
   ;; opil_v2/Id _current_motion_id
     (send _current_motion_id :deserialize buf ptr-) (incf ptr- (send _current_motion_id :serialization-length))
   ;; opil_v2/Id _current_action_id
     (send _current_action_id :deserialize buf ptr-) (incf ptr- (send _current_action_id :serialization-length))
   ;; opil_v2/Id _last_finished_motion
     (send _last_finished_motion :deserialize buf ptr-) (incf ptr- (send _last_finished_motion :serialization-length))
   ;; opil_v2/Id _last_finished_action
     (send _last_finished_action :deserialize buf ptr-) (incf ptr- (send _last_finished_action :serialization-length))
   ;; opil_v2/AssignmentId[] _assignment_queue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _assignment_queue (let (r) (dotimes (i n) (push (instance opil_v2::AssignmentId :init) r)) r))
     (dolist (elem- _assignment_queue)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/PolygonStamped _footprint
     (send _footprint :deserialize buf ptr-) (incf ptr- (send _footprint :serialization-length))
   ;;
   self)
  )

(setf (get opil_v2::AssignmentStatus :md5sum-) "bcb703123a6ab6a630050f9c05aea956")
(setf (get opil_v2::AssignmentStatus :datatype-) "opil_v2/AssignmentStatus")
(setf (get opil_v2::AssignmentStatus :definition-)
      "std_msgs/Header header
Id robot_id
Id current_task_id
Id current_motion_id
Id current_action_id
Id last_finished_motion
Id last_finished_action
AssignmentId[] assignment_queue
# string assignment_queue
geometry_msgs/PolygonStamped footprint

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
MSG: opil_v2/AssignmentId
# Message for the definition of the ids of an Assignment
uint32 task_id
uint32 action_id
uint32 motion_id

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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



(provide :opil_v2/AssignmentStatus "bcb703123a6ab6a630050f9c05aea956")


