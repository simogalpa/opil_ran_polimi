;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::ErrorAGV)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'ErrorAGV (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::ERRORAGV")
  (make-package "OPIL_V2::ERRORAGV"))

(in-package "ROS")
;;//! \htmlinclude ErrorAGV.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opil_v2::ErrorAGV
  :super ros::object
  :slots (_header _vehicle_id _error_AGV _description ))

(defmethod opil_v2::ErrorAGV
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_id __vehicle_id) (instance opil_v2::Id :init))
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
    ;; opil_v2/Id _vehicle_id
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
     ;; opil_v2/Id _vehicle_id
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
   ;; opil_v2/Id _vehicle_id
     (send _vehicle_id :deserialize buf ptr-) (incf ptr- (send _vehicle_id :serialization-length))
   ;; uint8 _error_AGV
     (setq _error_AGV (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get opil_v2::ErrorAGV :md5sum-) "78ad4f48718cf35af4c2e5acf0a34b81")
(setf (get opil_v2::ErrorAGV :datatype-) "opil_v2/ErrorAGV")
(setf (get opil_v2::ErrorAGV :definition-)
      "# Error message from the AGV
std_msgs/Header header
Id vehicle_id
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



(provide :opil_v2/ErrorAGV "78ad4f48718cf35af4c2e5acf0a34b81")


