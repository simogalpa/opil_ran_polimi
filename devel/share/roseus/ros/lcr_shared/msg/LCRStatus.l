;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::LCRStatus)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'LCRStatus (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::LCRSTATUS")
  (make-package "LCR_SHARED::LCRSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LCRStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SHUTDOWN*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*SHUTDOWN* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*SHUTDOWN* 0)
(intern "*POWERED*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*POWERED* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*POWERED* 1)
(intern "*SYNCHRONIZING*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*SYNCHRONIZING* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*SYNCHRONIZING* 2)
(intern "*LOCALIZING*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*LOCALIZING* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*LOCALIZING* 3)
(intern "*RUN*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*RUN* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*RUN* 4)
(intern "*LOST*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*LOST* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*LOST* 5)
(intern "*CHARGING*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*CHARGING* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*CHARGING* 6)
(intern "*LOCALIZATION_REQUIRED*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*LOCALIZATION_REQUIRED* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*LOCALIZATION_REQUIRED* 7)
(intern "*ECO*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*ECO* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*ECO* 8)
(intern "*STATUS_SIZE*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*STATUS_SIZE* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*STATUS_SIZE* 9)
(intern "*RUNNING*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*RUNNING* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*RUNNING* 0)
(intern "*RESTART*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*RESTART* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*RESTART* 1)
(intern "*STOPPED*" (find-package "LCR_SHARED::LCRSTATUS"))
(shadow '*STOPPED* (find-package "LCR_SHARED::LCRSTATUS"))
(defconstant lcr_shared::LCRStatus::*STOPPED* 2)
(defclass lcr_shared::LCRStatus
  :super ros::object
  :slots (_virtual_object_version_id _mission_id _wcs_adapter_ros_header _status _tag_seen _position _yaw _navigation_header _error_type _error_id _error_header _emergenza _bump_front _bump_rear _fall_front _fall_rear _motore_dx_fail _motore_sx_fail _errore_int_1 _errore_int_2 _battery_fail _battery_power _recharge_found _recharge_on _recharge_ok _hardware_status_header _serial_ok _serial_info _serial_header _laser_ok _laser_info _laser_header _planner_status _planner_info _controller_status _nextNode ))

(defmethod lcr_shared::LCRStatus
  (:init
   (&key
    ((:virtual_object_version_id __virtual_object_version_id) 0)
    ((:mission_id __mission_id) "")
    ((:wcs_adapter_ros_header __wcs_adapter_ros_header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:tag_seen __tag_seen) 0)
    ((:position __position) (instance geometry_msgs::Pose :init))
    ((:yaw __yaw) 0.0)
    ((:navigation_header __navigation_header) (instance std_msgs::Header :init))
    ((:error_type __error_type) 0)
    ((:error_id __error_id) "")
    ((:error_header __error_header) (instance std_msgs::Header :init))
    ((:emergenza __emergenza) nil)
    ((:bump_front __bump_front) nil)
    ((:bump_rear __bump_rear) nil)
    ((:fall_front __fall_front) nil)
    ((:fall_rear __fall_rear) nil)
    ((:motore_dx_fail __motore_dx_fail) nil)
    ((:motore_sx_fail __motore_sx_fail) nil)
    ((:errore_int_1 __errore_int_1) nil)
    ((:errore_int_2 __errore_int_2) nil)
    ((:battery_fail __battery_fail) nil)
    ((:battery_power __battery_power) 0)
    ((:recharge_found __recharge_found) nil)
    ((:recharge_on __recharge_on) nil)
    ((:recharge_ok __recharge_ok) nil)
    ((:hardware_status_header __hardware_status_header) (instance std_msgs::Header :init))
    ((:serial_ok __serial_ok) nil)
    ((:serial_info __serial_info) 0)
    ((:serial_header __serial_header) (instance std_msgs::Header :init))
    ((:laser_ok __laser_ok) nil)
    ((:laser_info __laser_info) 0)
    ((:laser_header __laser_header) (instance std_msgs::Header :init))
    ((:planner_status __planner_status) "")
    ((:planner_info __planner_info) 0)
    ((:controller_status __controller_status) "")
    ((:nextNode __nextNode) 0)
    )
   (send-super :init)
   (setq _virtual_object_version_id (round __virtual_object_version_id))
   (setq _mission_id (string __mission_id))
   (setq _wcs_adapter_ros_header __wcs_adapter_ros_header)
   (setq _status (round __status))
   (setq _tag_seen (round __tag_seen))
   (setq _position __position)
   (setq _yaw (float __yaw))
   (setq _navigation_header __navigation_header)
   (setq _error_type (round __error_type))
   (setq _error_id (string __error_id))
   (setq _error_header __error_header)
   (setq _emergenza __emergenza)
   (setq _bump_front __bump_front)
   (setq _bump_rear __bump_rear)
   (setq _fall_front __fall_front)
   (setq _fall_rear __fall_rear)
   (setq _motore_dx_fail __motore_dx_fail)
   (setq _motore_sx_fail __motore_sx_fail)
   (setq _errore_int_1 __errore_int_1)
   (setq _errore_int_2 __errore_int_2)
   (setq _battery_fail __battery_fail)
   (setq _battery_power (round __battery_power))
   (setq _recharge_found __recharge_found)
   (setq _recharge_on __recharge_on)
   (setq _recharge_ok __recharge_ok)
   (setq _hardware_status_header __hardware_status_header)
   (setq _serial_ok __serial_ok)
   (setq _serial_info (round __serial_info))
   (setq _serial_header __serial_header)
   (setq _laser_ok __laser_ok)
   (setq _laser_info (round __laser_info))
   (setq _laser_header __laser_header)
   (setq _planner_status (string __planner_status))
   (setq _planner_info (round __planner_info))
   (setq _controller_status (string __controller_status))
   (setq _nextNode (round __nextNode))
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
  (:tag_seen
   (&optional __tag_seen)
   (if __tag_seen (setq _tag_seen __tag_seen)) _tag_seen)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:navigation_header
   (&rest __navigation_header)
   (if (keywordp (car __navigation_header))
       (send* _navigation_header __navigation_header)
     (progn
       (if __navigation_header (setq _navigation_header (car __navigation_header)))
       _navigation_header)))
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
  (:emergenza
   (&optional __emergenza)
   (if __emergenza (setq _emergenza __emergenza)) _emergenza)
  (:bump_front
   (&optional __bump_front)
   (if __bump_front (setq _bump_front __bump_front)) _bump_front)
  (:bump_rear
   (&optional __bump_rear)
   (if __bump_rear (setq _bump_rear __bump_rear)) _bump_rear)
  (:fall_front
   (&optional __fall_front)
   (if __fall_front (setq _fall_front __fall_front)) _fall_front)
  (:fall_rear
   (&optional __fall_rear)
   (if __fall_rear (setq _fall_rear __fall_rear)) _fall_rear)
  (:motore_dx_fail
   (&optional __motore_dx_fail)
   (if __motore_dx_fail (setq _motore_dx_fail __motore_dx_fail)) _motore_dx_fail)
  (:motore_sx_fail
   (&optional __motore_sx_fail)
   (if __motore_sx_fail (setq _motore_sx_fail __motore_sx_fail)) _motore_sx_fail)
  (:errore_int_1
   (&optional __errore_int_1)
   (if __errore_int_1 (setq _errore_int_1 __errore_int_1)) _errore_int_1)
  (:errore_int_2
   (&optional __errore_int_2)
   (if __errore_int_2 (setq _errore_int_2 __errore_int_2)) _errore_int_2)
  (:battery_fail
   (&optional __battery_fail)
   (if __battery_fail (setq _battery_fail __battery_fail)) _battery_fail)
  (:battery_power
   (&optional __battery_power)
   (if __battery_power (setq _battery_power __battery_power)) _battery_power)
  (:recharge_found
   (&optional __recharge_found)
   (if __recharge_found (setq _recharge_found __recharge_found)) _recharge_found)
  (:recharge_on
   (&optional __recharge_on)
   (if __recharge_on (setq _recharge_on __recharge_on)) _recharge_on)
  (:recharge_ok
   (&optional __recharge_ok)
   (if __recharge_ok (setq _recharge_ok __recharge_ok)) _recharge_ok)
  (:hardware_status_header
   (&rest __hardware_status_header)
   (if (keywordp (car __hardware_status_header))
       (send* _hardware_status_header __hardware_status_header)
     (progn
       (if __hardware_status_header (setq _hardware_status_header (car __hardware_status_header)))
       _hardware_status_header)))
  (:serial_ok
   (&optional __serial_ok)
   (if __serial_ok (setq _serial_ok __serial_ok)) _serial_ok)
  (:serial_info
   (&optional __serial_info)
   (if __serial_info (setq _serial_info __serial_info)) _serial_info)
  (:serial_header
   (&rest __serial_header)
   (if (keywordp (car __serial_header))
       (send* _serial_header __serial_header)
     (progn
       (if __serial_header (setq _serial_header (car __serial_header)))
       _serial_header)))
  (:laser_ok
   (&optional __laser_ok)
   (if __laser_ok (setq _laser_ok __laser_ok)) _laser_ok)
  (:laser_info
   (&optional __laser_info)
   (if __laser_info (setq _laser_info __laser_info)) _laser_info)
  (:laser_header
   (&rest __laser_header)
   (if (keywordp (car __laser_header))
       (send* _laser_header __laser_header)
     (progn
       (if __laser_header (setq _laser_header (car __laser_header)))
       _laser_header)))
  (:planner_status
   (&optional __planner_status)
   (if __planner_status (setq _planner_status __planner_status)) _planner_status)
  (:planner_info
   (&optional __planner_info)
   (if __planner_info (setq _planner_info __planner_info)) _planner_info)
  (:controller_status
   (&optional __controller_status)
   (if __controller_status (setq _controller_status __controller_status)) _controller_status)
  (:nextNode
   (&optional __nextNode)
   (if __nextNode (setq _nextNode __nextNode)) _nextNode)
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
    ;; int32 _tag_seen
    4
    ;; geometry_msgs/Pose _position
    (send _position :serialization-length)
    ;; float64 _yaw
    8
    ;; std_msgs/Header _navigation_header
    (send _navigation_header :serialization-length)
    ;; int8 _error_type
    1
    ;; string _error_id
    4 (length _error_id)
    ;; std_msgs/Header _error_header
    (send _error_header :serialization-length)
    ;; bool _emergenza
    1
    ;; bool _bump_front
    1
    ;; bool _bump_rear
    1
    ;; bool _fall_front
    1
    ;; bool _fall_rear
    1
    ;; bool _motore_dx_fail
    1
    ;; bool _motore_sx_fail
    1
    ;; bool _errore_int_1
    1
    ;; bool _errore_int_2
    1
    ;; bool _battery_fail
    1
    ;; int32 _battery_power
    4
    ;; bool _recharge_found
    1
    ;; bool _recharge_on
    1
    ;; bool _recharge_ok
    1
    ;; std_msgs/Header _hardware_status_header
    (send _hardware_status_header :serialization-length)
    ;; bool _serial_ok
    1
    ;; int8 _serial_info
    1
    ;; std_msgs/Header _serial_header
    (send _serial_header :serialization-length)
    ;; bool _laser_ok
    1
    ;; int8 _laser_info
    1
    ;; std_msgs/Header _laser_header
    (send _laser_header :serialization-length)
    ;; string _planner_status
    4 (length _planner_status)
    ;; int8 _planner_info
    1
    ;; string _controller_status
    4 (length _controller_status)
    ;; int32 _nextNode
    4
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
     ;; int32 _tag_seen
       (write-long _tag_seen s)
     ;; geometry_msgs/Pose _position
       (send _position :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/Header _navigation_header
       (send _navigation_header :serialize s)
     ;; int8 _error_type
       (write-byte _error_type s)
     ;; string _error_id
       (write-long (length _error_id) s) (princ _error_id s)
     ;; std_msgs/Header _error_header
       (send _error_header :serialize s)
     ;; bool _emergenza
       (if _emergenza (write-byte -1 s) (write-byte 0 s))
     ;; bool _bump_front
       (if _bump_front (write-byte -1 s) (write-byte 0 s))
     ;; bool _bump_rear
       (if _bump_rear (write-byte -1 s) (write-byte 0 s))
     ;; bool _fall_front
       (if _fall_front (write-byte -1 s) (write-byte 0 s))
     ;; bool _fall_rear
       (if _fall_rear (write-byte -1 s) (write-byte 0 s))
     ;; bool _motore_dx_fail
       (if _motore_dx_fail (write-byte -1 s) (write-byte 0 s))
     ;; bool _motore_sx_fail
       (if _motore_sx_fail (write-byte -1 s) (write-byte 0 s))
     ;; bool _errore_int_1
       (if _errore_int_1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _errore_int_2
       (if _errore_int_2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _battery_fail
       (if _battery_fail (write-byte -1 s) (write-byte 0 s))
     ;; int32 _battery_power
       (write-long _battery_power s)
     ;; bool _recharge_found
       (if _recharge_found (write-byte -1 s) (write-byte 0 s))
     ;; bool _recharge_on
       (if _recharge_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _recharge_ok
       (if _recharge_ok (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/Header _hardware_status_header
       (send _hardware_status_header :serialize s)
     ;; bool _serial_ok
       (if _serial_ok (write-byte -1 s) (write-byte 0 s))
     ;; int8 _serial_info
       (write-byte _serial_info s)
     ;; std_msgs/Header _serial_header
       (send _serial_header :serialize s)
     ;; bool _laser_ok
       (if _laser_ok (write-byte -1 s) (write-byte 0 s))
     ;; int8 _laser_info
       (write-byte _laser_info s)
     ;; std_msgs/Header _laser_header
       (send _laser_header :serialize s)
     ;; string _planner_status
       (write-long (length _planner_status) s) (princ _planner_status s)
     ;; int8 _planner_info
       (write-byte _planner_info s)
     ;; string _controller_status
       (write-long (length _controller_status) s) (princ _controller_status s)
     ;; int32 _nextNode
       (write-long _nextNode s)
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
   ;; int32 _tag_seen
     (setq _tag_seen (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/Header _navigation_header
     (send _navigation_header :deserialize buf ptr-) (incf ptr- (send _navigation_header :serialization-length))
   ;; int8 _error_type
     (setq _error_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_type 127) (setq _error_type (- _error_type 256)))
   ;; string _error_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/Header _error_header
     (send _error_header :deserialize buf ptr-) (incf ptr- (send _error_header :serialization-length))
   ;; bool _emergenza
     (setq _emergenza (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bump_front
     (setq _bump_front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bump_rear
     (setq _bump_rear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fall_front
     (setq _fall_front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fall_rear
     (setq _fall_rear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motore_dx_fail
     (setq _motore_dx_fail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motore_sx_fail
     (setq _motore_sx_fail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _errore_int_1
     (setq _errore_int_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _errore_int_2
     (setq _errore_int_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _battery_fail
     (setq _battery_fail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _battery_power
     (setq _battery_power (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _recharge_found
     (setq _recharge_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _recharge_on
     (setq _recharge_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _recharge_ok
     (setq _recharge_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/Header _hardware_status_header
     (send _hardware_status_header :deserialize buf ptr-) (incf ptr- (send _hardware_status_header :serialization-length))
   ;; bool _serial_ok
     (setq _serial_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _serial_info
     (setq _serial_info (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _serial_info 127) (setq _serial_info (- _serial_info 256)))
   ;; std_msgs/Header _serial_header
     (send _serial_header :deserialize buf ptr-) (incf ptr- (send _serial_header :serialization-length))
   ;; bool _laser_ok
     (setq _laser_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _laser_info
     (setq _laser_info (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _laser_info 127) (setq _laser_info (- _laser_info 256)))
   ;; std_msgs/Header _laser_header
     (send _laser_header :deserialize buf ptr-) (incf ptr- (send _laser_header :serialization-length))
   ;; string _planner_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planner_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _planner_info
     (setq _planner_info (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _planner_info 127) (setq _planner_info (- _planner_info 256)))
   ;; string _controller_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _controller_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _nextNode
     (setq _nextNode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lcr_shared::LCRStatus :md5sum-) "a0b17cfb00f69212db580b1be903bfd6")
(setf (get lcr_shared::LCRStatus :datatype-) "lcr_shared/LCRStatus")
(setf (get lcr_shared::LCRStatus :definition-)
      "int32 virtual_object_version_id
string mission_id
Header wcs_adapter_ros_header

#Possibili valori di status 
int8 SHUTDOWN = 0 #robot in fase di arresto o riavvio
int8 POWERED = 1  #tasto power premuto
int8 SYNCHRONIZING = 2 #arrivata richiesta di sincronizzazione
int8 LOCALIZING = 3 #in fase di setup. Il tasto run è premuto ma il robot non è stato ancora localizzato.
int8 RUN = 4 #robot localizzato e funzionante, il comando del robot è in carico alla GUI Onit.
int8 LOST = 5 #robot perso
int8 CHARGING = 6 #robot in fase di ricarica
int8 LOCALIZATION_REQUIRED = 7 #il robot deve essere localizzato con un tag
int8 ECO = 8 #modalità eco attiva
int8 STATUS_SIZE = 9 #delimiter of status size

# informazioni aggiuntive per il WCS adapter: *_info
int8 RUNNING = 0
int8 RESTART = 1
int8 STOPPED = 2

int8 status
int32 tag_seen # -1 , nessun tag visto, altrimenti id tag
geometry_msgs/Pose position
float64 yaw
Header navigation_header

int8 error_type #0 no error
string error_id
Header error_header

bool emergenza #bottone premuto
bool bump_front
bool bump_rear
bool fall_front
bool fall_rear
bool motore_dx_fail #surriscaldamento o corto
bool motore_sx_fail #surriscaldamento o corto
bool errore_int_1 #errore elettronico irrecuperabile
bool errore_int_2 #errore elettronico irrecuperabile
bool battery_fail #tensione di batteria troppo bassa
int32 battery_power #percentuale
bool recharge_found
bool recharge_on
bool recharge_ok
Header hardware_status_header

bool serial_ok
int8 serial_info
Header serial_header

bool laser_ok
int8 laser_info
Header laser_header

string planner_status
int8 planner_info

string controller_status
int32 nextNode
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



(provide :lcr_shared/LCRStatus "a0b17cfb00f69212db580b1be903bfd6")


