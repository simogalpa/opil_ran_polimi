;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::RobotAgentProperties)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'RobotAgentProperties (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTAGENTPROPERTIES")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::ROBOTAGENTPROPERTIES"))

(in-package "ROS")
;;//! \htmlinclude RobotAgentProperties.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))


(defclass mars_agent_physical_robot_msgs::RobotAgentProperties
  :super ros::object
  :slots (_robot_id _type _footprint _min_height _max_height _payload _max_pos_x_vel _max_neg_x_vel _max_pos_x_acc _max_neg_x_acc _max_pos_y_vel _max_neg_y_vel _max_pos_y_acc _max_neg_y_acc _max_pos_ang_vel _max_neg_ang_vel _max_pos_ang_acc _max_neg_ang_acc _velocity_control_sensitivity _min_turning_radius _batt_capacity _batt_max_voltage _weight _vendor _action_capability ))

(defmethod mars_agent_physical_robot_msgs::RobotAgentProperties
  (:init
   (&key
    ((:robot_id __robot_id) (instance mars_common_msgs::Id :init))
    ((:type __type) (instance mars_agent_physical_robot_msgs::VehicleType :init))
    ((:footprint __footprint) (instance geometry_msgs::PolygonStamped :init))
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
    ((:max_pos_ang_acc __max_pos_ang_acc) 0.0)
    ((:max_neg_ang_acc __max_neg_ang_acc) 0.0)
    ((:velocity_control_sensitivity __velocity_control_sensitivity) 0.0)
    ((:min_turning_radius __min_turning_radius) 0.0)
    ((:batt_capacity __batt_capacity) 0.0)
    ((:batt_max_voltage __batt_max_voltage) 0.0)
    ((:weight __weight) 0.0)
    ((:vendor __vendor) "")
    ((:action_capability __action_capability) (let (r) (dotimes (i 0) (push (instance mars_agent_physical_robot_msgs::RobotAction :init) r)) r))
    )
   (send-super :init)
   (setq _robot_id __robot_id)
   (setq _type __type)
   (setq _footprint __footprint)
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
   (setq _max_pos_ang_acc (float __max_pos_ang_acc))
   (setq _max_neg_ang_acc (float __max_neg_ang_acc))
   (setq _velocity_control_sensitivity (float __velocity_control_sensitivity))
   (setq _min_turning_radius (float __min_turning_radius))
   (setq _batt_capacity (float __batt_capacity))
   (setq _batt_max_voltage (float __batt_max_voltage))
   (setq _weight (float __weight))
   (setq _vendor (string __vendor))
   (setq _action_capability __action_capability)
   self)
  (:robot_id
   (&rest __robot_id)
   (if (keywordp (car __robot_id))
       (send* _robot_id __robot_id)
     (progn
       (if __robot_id (setq _robot_id (car __robot_id)))
       _robot_id)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:footprint
   (&rest __footprint)
   (if (keywordp (car __footprint))
       (send* _footprint __footprint)
     (progn
       (if __footprint (setq _footprint (car __footprint)))
       _footprint)))
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
  (:max_pos_ang_acc
   (&optional __max_pos_ang_acc)
   (if __max_pos_ang_acc (setq _max_pos_ang_acc __max_pos_ang_acc)) _max_pos_ang_acc)
  (:max_neg_ang_acc
   (&optional __max_neg_ang_acc)
   (if __max_neg_ang_acc (setq _max_neg_ang_acc __max_neg_ang_acc)) _max_neg_ang_acc)
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
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
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
    ;; mars_common_msgs/Id _robot_id
    (send _robot_id :serialization-length)
    ;; mars_agent_physical_robot_msgs/VehicleType _type
    (send _type :serialization-length)
    ;; geometry_msgs/PolygonStamped _footprint
    (send _footprint :serialization-length)
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
    ;; float32 _max_pos_ang_acc
    4
    ;; float32 _max_neg_ang_acc
    4
    ;; float32 _velocity_control_sensitivity
    4
    ;; float32 _min_turning_radius
    4
    ;; float32 _batt_capacity
    4
    ;; float32 _batt_max_voltage
    4
    ;; float32 _weight
    4
    ;; string _vendor
    4 (length _vendor)
    ;; mars_agent_physical_robot_msgs/RobotAction[] _action_capability
    (apply #'+ (send-all _action_capability :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mars_common_msgs/Id _robot_id
       (send _robot_id :serialize s)
     ;; mars_agent_physical_robot_msgs/VehicleType _type
       (send _type :serialize s)
     ;; geometry_msgs/PolygonStamped _footprint
       (send _footprint :serialize s)
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
     ;; float32 _max_pos_ang_acc
       (sys::poke _max_pos_ang_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_neg_ang_acc
       (sys::poke _max_neg_ang_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_control_sensitivity
       (sys::poke _velocity_control_sensitivity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_turning_radius
       (sys::poke _min_turning_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _batt_capacity
       (sys::poke _batt_capacity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _batt_max_voltage
       (sys::poke _batt_max_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _vendor
       (write-long (length _vendor) s) (princ _vendor s)
     ;; mars_agent_physical_robot_msgs/RobotAction[] _action_capability
     (write-long (length _action_capability) s)
     (dolist (elem _action_capability)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mars_common_msgs/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; mars_agent_physical_robot_msgs/VehicleType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; geometry_msgs/PolygonStamped _footprint
     (send _footprint :deserialize buf ptr-) (incf ptr- (send _footprint :serialization-length))
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
   ;; float32 _max_pos_ang_acc
     (setq _max_pos_ang_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_neg_ang_acc
     (setq _max_neg_ang_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_control_sensitivity
     (setq _velocity_control_sensitivity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_turning_radius
     (setq _min_turning_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _batt_capacity
     (setq _batt_capacity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _batt_max_voltage
     (setq _batt_max_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _vendor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vendor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mars_agent_physical_robot_msgs/RobotAction[] _action_capability
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action_capability (let (r) (dotimes (i n) (push (instance mars_agent_physical_robot_msgs::RobotAction :init) r)) r))
     (dolist (elem- _action_capability)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::RobotAgentProperties :md5sum-) "44f789db54776ca317c570895c1f3583")
(setf (get mars_agent_physical_robot_msgs::RobotAgentProperties :datatype-) "mars_agent_physical_robot_msgs/RobotAgentProperties")
(setf (get mars_agent_physical_robot_msgs::RobotAgentProperties :definition-)
      "mars_common_msgs/Id robot_id
VehicleType type
geometry_msgs/PolygonStamped footprint
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
float32 max_pos_ang_acc
float32 max_neg_ang_acc
float32 velocity_control_sensitivity
float32 min_turning_radius
float32 batt_capacity
float32 batt_max_voltage
float32 weight
string vendor 
RobotAction[] action_capability

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

================================================================================
MSG: mars_agent_physical_robot_msgs/VehicleType
# supported vehicle_types
uint8 VEHICLE_TYPE_UNKNOWN=0
# TODO:add correct vehicle_types!
uint8 VEHICLE_TYPE_SUPPLY_VEHICLE=1
uint8 VEHICLE_TYPE_ASSEMBLY_VEHICLE=2

# type of the vehicle
uint8 vehicle_type

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: mars_agent_physical_robot_msgs/RobotAction
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
mars_common_msgs/Tuple[] attributes
# Optional description of the action. E.g.: unload left
string description


================================================================================
MSG: mars_common_msgs/Tuple
string type
string name
string value
")



(provide :mars_agent_physical_robot_msgs/RobotAgentProperties "44f789db54776ca317c570895c1f3583")


