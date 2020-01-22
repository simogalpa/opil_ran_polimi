;; Auto-generated. Do not edit!


(when (boundp 'RAN::ErrorAGV)
  (if (not (find-package "RAN"))
    (make-package "RAN"))
  (shadow 'ErrorAGV (find-package "RAN")))
(unless (find-package "RAN::ERRORAGV")
  (make-package "RAN::ERRORAGV"))

(in-package "ROS")
;;//! \htmlinclude ErrorAGV.msg.html
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass RAN::ErrorAGV
  :super ros::object
  :slots (_header _vehicle_id _error_AGV _description ))

(defmethod RAN::ErrorAGV
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_id __vehicle_id) (instance mars_common_msgs::Id :init))
    ((:error_AGV __error_AGV) 0)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_id __vehicle_id)
   (setq _error_AGV (round __error_AGV))
   (setq _description (string __description))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicle_id
   (&rest __vehicle_id)
   (if (keywordp (car __vehicle_id))
       (send* _vehicle_id __vehicle_id)
     (progn
       (if __vehicle_id (setq _vehicle_id (car __vehicle_id)))
       _vehicle_id)))
  (:error_AGV
   (&optional __error_AGV)
   (if __error_AGV (setq _error_AGV __error_AGV)) _error_AGV)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mars_common_msgs/Id _vehicle_id
    (send _vehicle_id :serialization-length)
    ;; uint8 _error_AGV
    1
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mars_common_msgs/Id _vehicle_id
       (send _vehicle_id :serialize s)
     ;; uint8 _error_AGV
       (write-byte _error_AGV s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mars_common_msgs/Id _vehicle_id
     (send _vehicle_id :deserialize buf ptr-) (incf ptr- (send _vehicle_id :serialization-length))
   ;; uint8 _error_AGV
     (setq _error_AGV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get RAN::ErrorAGV :md5sum-) "e7e428f0a97eaf783f2ff75628d5be97")
(setf (get RAN::ErrorAGV :datatype-) "RAN/ErrorAGV")
(setf (get RAN::ErrorAGV :definition-)
      "# Error message from the AGV
std_msgs/Header header
mars_common_msgs/Id vehicle_id
uint8 error_AGV
string description

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



(provide :RAN/ErrorAGV "e7e428f0a97eaf783f2ff75628d5be97")


