;; Auto-generated. Do not edit!


(when (boundp 'RAN::ElevatorStatus)
  (if (not (find-package "RAN"))
    (make-package "RAN"))
  (shadow 'ElevatorStatus (find-package "RAN")))
(unless (find-package "RAN::ELEVATORSTATUS")
  (make-package "RAN::ELEVATORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ElevatorStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass RAN::ElevatorStatus
  :super ros::object
  :slots (_header _complete_opened_doors _complete_closed_doors _busy _zero_floor _first_floor ))

(defmethod RAN::ElevatorStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:complete_opened_doors __complete_opened_doors) nil)
    ((:complete_closed_doors __complete_closed_doors) nil)
    ((:busy __busy) nil)
    ((:zero_floor __zero_floor) nil)
    ((:first_floor __first_floor) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _complete_opened_doors __complete_opened_doors)
   (setq _complete_closed_doors __complete_closed_doors)
   (setq _busy __busy)
   (setq _zero_floor __zero_floor)
   (setq _first_floor __first_floor)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:complete_opened_doors
   (&optional __complete_opened_doors)
   (if __complete_opened_doors (setq _complete_opened_doors __complete_opened_doors)) _complete_opened_doors)
  (:complete_closed_doors
   (&optional __complete_closed_doors)
   (if __complete_closed_doors (setq _complete_closed_doors __complete_closed_doors)) _complete_closed_doors)
  (:busy
   (&optional __busy)
   (if __busy (setq _busy __busy)) _busy)
  (:zero_floor
   (&optional __zero_floor)
   (if __zero_floor (setq _zero_floor __zero_floor)) _zero_floor)
  (:first_floor
   (&optional __first_floor)
   (if __first_floor (setq _first_floor __first_floor)) _first_floor)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _complete_opened_doors
    1
    ;; bool _complete_closed_doors
    1
    ;; bool _busy
    1
    ;; bool _zero_floor
    1
    ;; bool _first_floor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _complete_opened_doors
       (if _complete_opened_doors (write-byte -1 s) (write-byte 0 s))
     ;; bool _complete_closed_doors
       (if _complete_closed_doors (write-byte -1 s) (write-byte 0 s))
     ;; bool _busy
       (if _busy (write-byte -1 s) (write-byte 0 s))
     ;; bool _zero_floor
       (if _zero_floor (write-byte -1 s) (write-byte 0 s))
     ;; bool _first_floor
       (if _first_floor (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _complete_opened_doors
     (setq _complete_opened_doors (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _complete_closed_doors
     (setq _complete_closed_doors (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _busy
     (setq _busy (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _zero_floor
     (setq _zero_floor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _first_floor
     (setq _first_floor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get RAN::ElevatorStatus :md5sum-) "07c4ee4aed76536c26fd414cd95d5817")
(setf (get RAN::ElevatorStatus :datatype-) "RAN/ElevatorStatus")
(setf (get RAN::ElevatorStatus :definition-)
      "Header header
bool complete_opened_doors
bool complete_closed_doors
bool busy
bool zero_floor
bool first_floor
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



(provide :RAN/ElevatorStatus "07c4ee4aed76536c26fd414cd95d5817")


