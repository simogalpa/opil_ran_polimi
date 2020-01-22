;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::ErrorRAN)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'ErrorRAN (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::ERRORRAN")
  (make-package "OPIL_V2::ERRORRAN"))

(in-package "ROS")
;;//! \htmlinclude ErrorRAN.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opil_v2::ErrorRAN
  :super ros::object
  :slots (_header _robot_id _error_RAN _description _agv_error ))

(defmethod opil_v2::ErrorRAN
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_id __robot_id) (instance opil_v2::Id :init))
    ((:error_RAN __error_RAN) 0)
    ((:description __description) "")
    ((:agv_error __agv_error) (instance opil_v2::ErrorAGV :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_id __robot_id)
   (setq _error_RAN (round __error_RAN))
   (setq _description (string __description))
   (setq _agv_error __agv_error)
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
  (:error_RAN
   (&optional __error_RAN)
   (if __error_RAN (setq _error_RAN __error_RAN)) _error_RAN)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:agv_error
   (&rest __agv_error)
   (if (keywordp (car __agv_error))
       (send* _agv_error __agv_error)
     (progn
       (if __agv_error (setq _agv_error (car __agv_error)))
       _agv_error)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; opil_v2/Id _robot_id
    (send _robot_id :serialization-length)
    ;; uint8 _error_RAN
    1
    ;; string _description
    4 (length _description)
    ;; opil_v2/ErrorAGV _agv_error
    (send _agv_error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opil_v2/Id _robot_id
       (send _robot_id :serialize s)
     ;; uint8 _error_RAN
       (write-byte _error_RAN s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; opil_v2/ErrorAGV _agv_error
       (send _agv_error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opil_v2/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; uint8 _error_RAN
     (setq _error_RAN (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; opil_v2/ErrorAGV _agv_error
     (send _agv_error :deserialize buf ptr-) (incf ptr- (send _agv_error :serialization-length))
   ;;
   self)
  )

(setf (get opil_v2::ErrorRAN :md5sum-) "64923603d670371b84825165fc533575")
(setf (get opil_v2::ErrorRAN :datatype-) "opil_v2/ErrorRAN")
(setf (get opil_v2::ErrorRAN :definition-)
      "# Error message from the RAN
std_msgs/Header header
Id robot_id
uint8 error_RAN
string description
ErrorAGV agv_error


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
MSG: opil_v2/ErrorAGV
# Error message from the AGV
std_msgs/Header header
Id vehicle_id
uint8 error_AGV
string description

")



(provide :opil_v2/ErrorRAN "64923603d670371b84825165fc533575")


