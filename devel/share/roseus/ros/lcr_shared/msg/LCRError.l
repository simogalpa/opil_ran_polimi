;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::LCRError)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'LCRError (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::LCRERROR")
  (make-package "LCR_SHARED::LCRERROR"))

(in-package "ROS")
;;//! \htmlinclude LCRError.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lcr_shared::LCRError
  :super ros::object
  :slots (_header _error_type _error_ID ))

(defmethod lcr_shared::LCRError
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:error_type __error_type) 0)
    ((:error_ID __error_ID) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _error_type (round __error_type))
   (setq _error_ID (string __error_ID))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:error_type
   (&optional __error_type)
   (if __error_type (setq _error_type __error_type)) _error_type)
  (:error_ID
   (&optional __error_ID)
   (if __error_ID (setq _error_ID __error_ID)) _error_ID)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _error_type
    1
    ;; string _error_ID
    4 (length _error_ID)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _error_type
       (write-byte _error_type s)
     ;; string _error_ID
       (write-long (length _error_ID) s) (princ _error_ID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _error_type
     (setq _error_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_type 127) (setq _error_type (- _error_type 256)))
   ;; string _error_ID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_ID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lcr_shared::LCRError :md5sum-) "d9ea424d468e73498cf04a232a99c43e")
(setf (get lcr_shared::LCRError :datatype-) "lcr_shared/LCRError")
(setf (get lcr_shared::LCRError :definition-)
      "Header header
int8 error_type #in ordine decrescente di gravita' 1-2-3-4
string error_ID
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



(provide :lcr_shared/LCRError "d9ea424d468e73498cf04a232a99c43e")


