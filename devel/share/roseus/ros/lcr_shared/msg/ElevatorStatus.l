;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::ElevatorStatus)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'ElevatorStatus (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::ELEVATORSTATUS")
  (make-package "LCR_SHARED::ELEVATORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ElevatorStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lcr_shared::ElevatorStatus
  :super ros::object
  :slots (_header _floor _open ))

(defmethod lcr_shared::ElevatorStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:floor __floor) 0)
    ((:open __open) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _floor (round __floor))
   (setq _open __open)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:open
   (&optional __open)
   (if __open (setq _open __open)) _open)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _floor
    1
    ;; bool _open
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _floor
       (write-byte _floor s)
     ;; bool _open
       (if _open (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _floor
     (setq _floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _floor 127) (setq _floor (- _floor 256)))
   ;; bool _open
     (setq _open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lcr_shared::ElevatorStatus :md5sum-) "d3137c1e661861465aec7017938785a6")
(setf (get lcr_shared::ElevatorStatus :datatype-) "lcr_shared/ElevatorStatus")
(setf (get lcr_shared::ElevatorStatus :definition-)
      "Header header
int8 floor # ground: 0, first:1, ...
bool open # open / closed doors
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



(provide :lcr_shared/ElevatorStatus "d3137c1e661861465aec7017938785a6")


