;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::RobotDescriptionAGV)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'RobotDescriptionAGV (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::ROBOTDESCRIPTIONAGV")
  (make-package "OPIL_V2::ROBOTDESCRIPTIONAGV"))

(in-package "ROS")
;;//! \htmlinclude RobotDescriptionAGV.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass opil_v2::RobotDescriptionAGV
  :super ros::object
  :slots (_header _vehicle_id _left_size _right_size _front_size _rear_size _min_height _max_height _payload _max_pos_x_vel _max_neg_x_vel _max_pos_x_acc _max_neg_x_acc _max_pos_y_vel _max_neg_y_vel _max_pos_y_acc _max_neg_y_acc _max_pos_ang_vel _max_neg_ang_vel _velocity_control_sensitivity _min_turning_radius _batt_capacity _batt_max_voltage _vehicle_type _vendor _action_capability ))

(defmethod opil_v2::RobotDescriptionAGV
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_id __vehicle_id) (instance opil_v2::Id :init))
    ((:left_size __left_size) 0.0)
    ((:right_size __right_size) 0.0)
    ((:front_size __front_size) 0.0)
    ((:rear_size __rear_size) 0.0)
    ((:min_height __min_height) 0.0)
    ((:max_height __max_height) 0.0)
    ((:payload __payload) 0.0)
    ((:max_pos_x_vel __max_pos_x_vel) 0.0)
    ((:max_neg_x_vel __max_neg_x_vel) 0.0)
    ((:max_pos_x_acc __max_pos_x_acc) 0.0)
    ((:max_neg_x_acc __max_neg_x_acc) 0.0)
    ((:max_pos_y_vel __max_pos_y_vel) 0.0)
    ((:max_neg_y_vel __max_neg_y_vel) 0.0)
    ((:max_pos_y_acc __max_pos_y_acc) 0.0)
    ((:max_neg_y_acc __max_neg_y_acc) 0.0)
    ((:max_pos_ang_vel __max_pos_ang_vel) 0.0)
    ((:max_neg_ang_vel __max_neg_ang_vel) 0.0)
    ((:velocity_control_sensitivity __velocity_control_sensitivity) 0.0)
    ((:min_turning_radius __min_turning_radius) 0.0)
    ((:batt_capacity __batt_capacity) 0.0)
    ((:batt_max_voltage __batt_max_voltage) 0.0)
    ((:vehicle_type __vehicle_type) "")
    ((:vendor __vendor) "")
    ((:action_capability __action_capability) (let (r) (dotimes (i 0) (push (instance opil_v2::RobotAction :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_id __vehicle_id)
   (setq _left_size (float __left_size))
   (setq _right_size (float __right_size))
   (setq _front_size (float __front_size))
   (setq _rear_size (float __rear_size))
   (setq _min_height (float __min_height))
   (setq _max_height (float __max_height))
   (setq _payload (float __payload))
   (setq _max_pos_x_vel (float __max_pos_x_vel))
   (setq _max_neg_x_vel (float __max_neg_x_vel))
   (setq _max_pos_x_acc (float __max_pos_x_acc))
   (setq _max_neg_x_acc (float __max_neg_x_acc))
   (setq _max_pos_y_vel (float __max_pos_y_vel))
   (setq _max_neg_y_vel (float __max_neg_y_vel))
   (setq _max_pos_y_acc (float __max_pos_y_acc))
   (setq _max_neg_y_acc (float __max_neg_y_acc))
   (setq _max_pos_ang_vel (float __max_pos_ang_vel))
   (setq _max_neg_ang_vel (float __max_neg_ang_vel))
   (setq _velocity_control_sensitivity (float __velocity_control_sensitivity))
   (setq _min_turning_radius (float __min_turning_radius))
   (setq _batt_capacity (float __batt_capacity))
   (setq _batt_max_voltage (float __batt_max_voltage))
   (setq _vehicle_type (string __vehicle_type))
   (setq _vendor (string __vendor))
   (setq _action_capability __action_capability)
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
  (:left_size
   (&optional __left_size)
   (if __left_size (setq _left_size __left_size)) _left_size)
  (:right_size
   (&optional __right_size)
   (if __right_size (setq _right_size __right_size)) _right_size)
  (:front_size
   (&optional __front_size)
   (if __front_size (setq _front_size __front_size)) _front_size)
  (:rear_size
   (&optional __rear_size)
   (if __rear_size (setq _rear_size __rear_size)) _rear_size)
  (:min_height
   (&optional __min_height)
   (if __min_height (setq _min_height __min_height)) _min_height)
  (:max_height
   (&optional __max_height)
   (if __max_height (setq _max_height __max_height)) _max_height)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:max_pos_x_vel
   (&optional __max_pos_x_vel)
   (if __max_pos_x_vel (setq _max_pos_x_vel __max_pos_x_vel)) _max_pos_x_vel)
  (:max_neg_x_vel
   (&optional __max_neg_x_vel)
   (if __max_neg_x_vel (setq _max_neg_x_vel __max_neg_x_vel)) _max_neg_x_vel)
  (:max_pos_x_acc
   (&optional __max_pos_x_acc)
   (if __max_pos_x_acc (setq _max_pos_x_acc __max_pos_x_acc)) _max_pos_x_acc)
  (:max_neg_x_acc
   (&optional __max_neg_x_acc)
   (if __max_neg_x_acc (setq _max_neg_x_acc __max_neg_x_acc)) _max_neg_x_acc)
  (:max_pos_y_vel
   (&optional __max_pos_y_vel)
   (if __max_pos_y_vel (setq _max_pos_y_vel __max_pos_y_vel)) _max_pos_y_vel)
  (:max_neg_y_vel
   (&optional __max_neg_y_vel)
   (if __max_neg_y_vel (setq _max_neg_y_vel __max_neg_y_vel)) _max_neg_y_vel)
  (:max_pos_y_acc
   (&optional __max_pos_y_acc)
   (if __max_pos_y_acc (setq _max_pos_y_acc __max_pos_y_acc)) _max_pos_y_acc)
  (:max_neg_y_acc
   (&optional __max_neg_y_acc)
   (if __max_neg_y_acc (setq _max_neg_y_acc __max_neg_y_acc)) _max_neg_y_acc)
  (:max_pos_ang_vel
   (&optional __max_pos_ang_vel)
   (if __max_pos_ang_vel (setq _max_pos_ang_vel __max_pos_ang_vel)) _max_pos_ang_vel)
  (:max_neg_ang_vel
   (&optional __max_neg_ang_vel)
   (if __max_neg_ang_vel (setq _max_neg_ang_vel __max_neg_ang_vel)) _max_neg_ang_vel)
  (:velocity_control_sensitivity
   (&optional __velocity_control_sensitivity)
   (if __velocity_control_sensitivity (setq _velocity_control_sensitivity __velocity_control_sensitivity)) _velocity_control_sensitivity)
  (:min_turning_radius
   (&optional __min_turning_radius)
   (if __min_turning_radius (setq _min_turning_radius __min_turning_radius)) _min_turning_radius)
  (:batt_capacity
   (&optional __batt_capacity)
   (if __batt_capacity (setq _batt_capacity __batt_capacity)) _batt_capacity)
  (:batt_max_voltage
   (&optional __batt_max_voltage)
   (if __batt_max_voltage (setq _batt_max_voltage __batt_max_voltage)) _batt_max_voltage)
  (:vehicle_type
   (&optional __vehicle_type)
   (if __vehicle_type (setq _vehicle_type __vehicle_type)) _vehicle_type)
  (:vendor
   (&optional __vendor)
   (if __vendor (setq _vendor __vendor)) _vendor)
  (:action_capability
   (&rest __action_capability)
   (if (keywordp (car __action_capability))
       (send* _action_capability __action_capability)
     (progn
       (if __action_capability (setq _action_capability (car __action_capability)))
       _action_capability)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; opil_v2/Id _vehicle_id
    (send _vehicle_id :serialization-length)
    ;; float32 _left_size
    4
    ;; float32 _right_size
    4
    ;; float32 _front_size
    4
    ;; float32 _rear_size
    4
    ;; float32 _min_height
    4
    ;; float32 _max_height
    4
    ;; float32 _payload
    4
    ;; float32 _max_pos_x_vel
    4
    ;; float32 _max_neg_x_vel
    4
    ;; float32 _max_pos_x_acc
    4
    ;; float32 _max_neg_x_acc
    4
    ;; float32 _max_pos_y_vel
    4
    ;; float32 _max_neg_y_vel
    4
    ;; float32 _max_pos_y_acc
    4
    ;; float32 _max_neg_y_acc
    4
    ;; float32 _max_pos_ang_vel
    4
    ;; float32 _max_neg_ang_vel
    4
    ;; float32 _velocity_control_sensitivity
    4
    ;; float32 _min_turning_radius
    4
    ;; float32 _batt_capacity
    4
    ;; float32 _batt_max_voltage
    4
    ;; string _vehicle_type
    4 (length _vehicle_type)
    ;; string _vendor
    4 (length _vendor)
    ;; opil_v2/RobotAction[] _action_capability
    (apply #'+ (send-all _action_capability :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; opil_v2/Id _vehicle_id
       (send _vehicle_id :serialize s)
     ;; float32 _left_size
       (sys::poke _left_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_size
       (sys::poke _right_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_size
       (sys::poke _front_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_size
       (sys::poke _rear_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_height
       (sys::poke _min_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_height
       (sys::poke _max_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _payload
       (sys::poke _payload (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_pos_x_vel
       (sys::poke _max_pos_x_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_neg_x_vel
       (sys::poke _max_neg_x_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_pos_x_acc
       (sys::poke _max_pos_x_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_neg_x_acc
       (sys::poke _max_neg_x_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_pos_y_vel
       (sys::poke _max_pos_y_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_neg_y_vel
       (sys::poke _max_neg_y_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_pos_y_acc
       (sys::poke _max_pos_y_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_neg_y_acc
       (sys::poke _max_neg_y_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_pos_ang_vel
       (sys::poke _max_pos_ang_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_neg_ang_vel
       (sys::poke _max_neg_ang_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_control_sensitivity
       (sys::poke _velocity_control_sensitivity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_turning_radius
       (sys::poke _min_turning_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _batt_capacity
       (sys::poke _batt_capacity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _batt_max_voltage
       (sys::poke _batt_max_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _vehicle_type
       (write-long (length _vehicle_type) s) (princ _vehicle_type s)
     ;; string _vendor
       (write-long (length _vendor) s) (princ _vendor s)
     ;; opil_v2/RobotAction[] _action_capability
     (write-long (length _action_capability) s)
     (dolist (elem _action_capability)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; opil_v2/Id _vehicle_id
     (send _vehicle_id :deserialize buf ptr-) (incf ptr- (send _vehicle_id :serialization-length))
   ;; float32 _left_size
     (setq _left_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_size
     (setq _right_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_size
     (setq _front_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_size
     (setq _rear_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_height
     (setq _min_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_height
     (setq _max_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _payload
     (setq _payload (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_pos_x_vel
     (setq _max_pos_x_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_neg_x_vel
     (setq _max_neg_x_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_pos_x_acc
     (setq _max_pos_x_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_neg_x_acc
     (setq _max_neg_x_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_pos_y_vel
     (setq _max_pos_y_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_neg_y_vel
     (setq _max_neg_y_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_pos_y_acc
     (setq _max_pos_y_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_neg_y_acc
     (setq _max_neg_y_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_pos_ang_vel
     (setq _max_pos_ang_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_neg_ang_vel
     (setq _max_neg_ang_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_control_sensitivity
     (setq _velocity_control_sensitivity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_turning_radius
     (setq _min_turning_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _batt_capacity
     (setq _batt_capacity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _batt_max_voltage
     (setq _batt_max_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _vehicle_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicle_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _vendor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vendor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; opil_v2/RobotAction[] _action_capability
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action_capability (let (r) (dotimes (i n) (push (instance opil_v2::RobotAction :init) r)) r))
     (dolist (elem- _action_capability)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get opil_v2::RobotDescriptionAGV :md5sum-) "800c3c6d6616acec91eaf106544798b5")
(setf (get opil_v2::RobotDescriptionAGV :datatype-) "opil_v2/RobotDescriptionAGV")
(setf (get opil_v2::RobotDescriptionAGV :definition-)
      "Header header
Id vehicle_id
float32 left_size
float32 right_size
float32 front_size
float32 rear_size
float32 min_height
float32 max_height
float32 payload
float32 max_pos_x_vel
float32 max_neg_x_vel
float32 max_pos_x_acc
float32 max_neg_x_acc
float32 max_pos_y_vel
float32 max_neg_y_vel
float32 max_pos_y_acc
float32 max_neg_y_acc
float32 max_pos_ang_vel
float32 max_neg_ang_vel
float32 velocity_control_sensitivity
float32 min_turning_radius
float32 batt_capacity
float32 batt_max_voltage
string vehicle_type
string vendor 
RobotAction[] action_capability

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
MSG: opil_v2/RobotAction
# definition of all the possible actionsmars_agent_physical_robot_msgs
uint8 CATEGORY_UNDEFINED = 0
uint8 CATEGORY_NONE = 5
uint8 CATEGORY_LOAD = 10
uint8 CATEGORY_MANUAL_LOAD_START = 11
uint8 CATEGORY_MANUAL_LOAD_DONE = 12
uint8 CATEGORY_UNLOAD = 20
uint8 CATEGORY_MANUAL_UNLOAD_START = 21
uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22
uint8 CATEGORY_START_CHARGING = 30
uint8 CATEGORY_STOP_CHARGING = 31
# ...


# Category of the action which has to be performed
uint8 category
# Defines the robot specific action which has to be performed. 
# The specific actions must be defined by manufacturer. 
uint8 action
Tuple[] attributes
# Optional description of the action. E.g.: unload left
string description


================================================================================
MSG: opil_v2/Tuple
string type
string name
string value


")



(provide :opil_v2/RobotDescriptionAGV "800c3c6d6616acec91eaf106544798b5")


