;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::wcs_status)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'wcs_status (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::WCS_STATUS")
  (make-package "LCR_SHARED::WCS_STATUS"))

(in-package "ROS")
;;//! \htmlinclude wcs_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lcr_shared::wcs_status
  :super ros::object
  :slots (_virtual_object_version_id _mission_id _wcs_adapter_ros_header _status _error_type _error_id _error_header ))

(defmethod lcr_shared::wcs_status
  (:init
   (&key
    ((:virtual_object_version_id __virtual_object_version_id) 0)
    ((:mission_id __mission_id) "")
    ((:wcs_adapter_ros_header __wcs_adapter_ros_header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:error_type __error_type) 0)
    ((:error_id __error_id) "")
    ((:error_header __error_header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _virtual_object_version_id (round __virtual_object_version_id))
   (setq _mission_id (string __mission_id))
   (setq _wcs_adapter_ros_header __wcs_adapter_ros_header)
   (setq _status (round __status))
   (setq _error_type (round __error_type))
   (setq _error_id (string __error_id))
   (setq _error_header __error_header)
   self)
  (:virtual_object_version_id
   (&optional __virtual_object_version_id)
   (if __virtual_object_version_id (setq _virtual_object_version_id __virtual_object_version_id)) _virtual_object_version_id)
  (:mission_id
   (&optional __mission_id)
   (if __mission_id (setq _mission_id __mission_id)) _mission_id)
  (:wcs_adapter_ros_header
   (&rest __wcs_adapter_ros_header)
   (if (keywordp (car __wcs_adapter_ros_header))
       (send* _wcs_adapter_ros_header __wcs_adapter_ros_header)
     (progn
       (if __wcs_adapter_ros_header (setq _wcs_adapter_ros_header (car __wcs_adapter_ros_header)))
       _wcs_adapter_ros_header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:error_type
   (&optional __error_type)
   (if __error_type (setq _error_type __error_type)) _error_type)
  (:error_id
   (&optional __error_id)
   (if __error_id (setq _error_id __error_id)) _error_id)
  (:error_header
   (&rest __error_header)
   (if (keywordp (car __error_header))
       (send* _error_header __error_header)
     (progn
       (if __error_header (setq _error_header (car __error_header)))
       _error_header)))
  (:serialization-length
   ()
   (+
    ;; int32 _virtual_object_version_id
    4
    ;; string _mission_id
    4 (length _mission_id)
    ;; std_msgs/Header _wcs_adapter_ros_header
    (send _wcs_adapter_ros_header :serialization-length)
    ;; int8 _status
    1
    ;; int8 _error_type
    1
    ;; string _error_id
    4 (length _error_id)
    ;; std_msgs/Header _error_header
    (send _error_header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _virtual_object_version_id
       (write-long _virtual_object_version_id s)
     ;; string _mission_id
       (write-long (length _mission_id) s) (princ _mission_id s)
     ;; std_msgs/Header _wcs_adapter_ros_header
       (send _wcs_adapter_ros_header :serialize s)
     ;; int8 _status
       (write-byte _status s)
     ;; int8 _error_type
       (write-byte _error_type s)
     ;; string _error_id
       (write-long (length _error_id) s) (princ _error_id s)
     ;; std_msgs/Header _error_header
       (send _error_header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _virtual_object_version_id
     (setq _virtual_object_version_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mission_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/Header _wcs_adapter_ros_header
     (send _wcs_adapter_ros_header :deserialize buf ptr-) (incf ptr- (send _wcs_adapter_ros_header :serialization-length))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; int8 _error_type
     (setq _error_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_type 127) (setq _error_type (- _error_type 256)))
   ;; string _error_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/Header _error_header
     (send _error_header :deserialize buf ptr-) (incf ptr- (send _error_header :serialization-length))
   ;;
   self)
  )

(setf (get lcr_shared::wcs_status :md5sum-) "4fe2a2cc15ab59605464b4b1259d9135")
(setf (get lcr_shared::wcs_status :datatype-) "lcr_shared/wcs_status")
(setf (get lcr_shared::wcs_status :definition-)
      "int32 virtual_object_version_id
string mission_id
Header wcs_adapter_ros_header
int8 status
int8 error_type #0 no error
string error_id
Header error_header
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



(provide :lcr_shared/wcs_status "4fe2a2cc15ab59605464b4b1259d9135")


