;; Auto-generated. Do not edit!


(when (boundp 'lcr_driver::Battery)
  (if (not (find-package "LCR_DRIVER"))
    (make-package "LCR_DRIVER"))
  (shadow 'Battery (find-package "LCR_DRIVER")))
(unless (find-package "LCR_DRIVER::BATTERY")
  (make-package "LCR_DRIVER::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude Battery.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lcr_driver::Battery
  :super ros::object
  :slots (_header _level ))

(defmethod lcr_driver::Battery
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:level __level) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _level (float __level))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _level
       (sys::poke _level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _level
     (setq _level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lcr_driver::Battery :md5sum-) "36b71bac3c7d6d503ee628ec4360bc1b")
(setf (get lcr_driver::Battery :datatype-) "lcr_driver/Battery")
(setf (get lcr_driver::Battery :definition-)
      "Header header
float32 level # in %
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

")



(provide :lcr_driver/Battery "36b71bac3c7d6d503ee628ec4360bc1b")


