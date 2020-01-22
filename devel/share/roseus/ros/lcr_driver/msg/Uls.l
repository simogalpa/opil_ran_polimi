;; Auto-generated. Do not edit!


(when (boundp 'lcr_driver::Uls)
  (if (not (find-package "LCR_DRIVER"))
    (make-package "LCR_DRIVER"))
  (shadow 'Uls (find-package "LCR_DRIVER")))
(unless (find-package "LCR_DRIVER::ULS")
  (make-package "LCR_DRIVER::ULS"))

(in-package "ROS")
;;//! \htmlinclude Uls.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*RANGE_MAX*" (find-package "LCR_DRIVER::ULS"))
(shadow '*RANGE_MAX* (find-package "LCR_DRIVER::ULS"))
(defconstant lcr_driver::Uls::*RANGE_MAX* 1.5)
(intern "*RANGE_MIN*" (find-package "LCR_DRIVER::ULS"))
(shadow '*RANGE_MIN* (find-package "LCR_DRIVER::ULS"))
(defconstant lcr_driver::Uls::*RANGE_MIN* 0.4)
(intern "*BEAM*" (find-package "LCR_DRIVER::ULS"))
(shadow '*BEAM* (find-package "LCR_DRIVER::ULS"))
(defconstant lcr_driver::Uls::*BEAM* 1.39626)
(defclass lcr_driver::Uls
  :super ros::object
  :slots (_header _measures ))

(defmethod lcr_driver::Uls
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:measures __measures) (let (r) (dotimes (i 6) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _measures __measures)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:measures
   (&rest __measures)
   (if (keywordp (car __measures))
       (send* _measures __measures)
     (progn
       (if __measures (setq _measures (car __measures)))
       _measures)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose[6] _measures
    (apply #'+ (send-all _measures :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose[6] _measures
     (dolist (elem _measures)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose[6] _measures
   (dotimes (i 6)
     (send (elt _measures i) :deserialize buf ptr-) (incf ptr- (send (elt _measures i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get lcr_driver::Uls :md5sum-) "c8ed7d4d3b258a49ae30b36a4e353dda")
(setf (get lcr_driver::Uls :datatype-) "lcr_driver/Uls")
(setf (get lcr_driver::Uls :definition-)
      "Header header
geometry_msgs/Pose[6] measures # array of data
float64 range_max=1.5
float64 range_min=0.4
float64 beam=1.39626 #80° in Rad



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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :lcr_driver/Uls "c8ed7d4d3b258a49ae30b36a4e353dda")


