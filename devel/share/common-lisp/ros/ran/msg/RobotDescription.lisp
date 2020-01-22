; Auto-generated. Do not edit!


(cl:in-package ran-msg)


;//! \htmlinclude RobotDescription.msg.html

(cl:defclass <RobotDescription> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type ran-msg:Id
    :initform (cl:make-instance 'ran-msg:Id))
   (agv_msg
    :reader agv_msg
    :initarg :agv_msg
    :type ran-msg:RobotDescriptionAGV
    :initform (cl:make-instance 'ran-msg:RobotDescriptionAGV)))
)

(cl:defclass RobotDescription (<RobotDescription>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotDescription>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotDescription)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ran-msg:<RobotDescription> is deprecated: use ran-msg:RobotDescription instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ran-msg:header-val is deprecated.  Use ran-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <RobotDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ran-msg:robot_id-val is deprecated.  Use ran-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'agv_msg-val :lambda-list '(m))
(cl:defmethod agv_msg-val ((m <RobotDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ran-msg:agv_msg-val is deprecated.  Use ran-msg:agv_msg instead.")
  (agv_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotDescription>) ostream)
  "Serializes a message object of type '<RobotDescription>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'agv_msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotDescription>) istream)
  "Deserializes a message object of type '<RobotDescription>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'agv_msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotDescription>)))
  "Returns string type for a message object of type '<RobotDescription>"
  "ran/RobotDescription")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotDescription)))
  "Returns string type for a message object of type 'RobotDescription"
  "ran/RobotDescription")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotDescription>)))
  "Returns md5sum for a message object of type '<RobotDescription>"
  "820816697a26fe0826984b872430e14c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotDescription)))
  "Returns md5sum for a message object of type 'RobotDescription"
  "820816697a26fe0826984b872430e14c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotDescription>)))
  "Returns full string definition for message of type '<RobotDescription>"
  (cl:format cl:nil "Header header~%Id robot_id~%RobotDescriptionAGV agv_msg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ran/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: ran/RobotDescriptionAGV~%Header header~%Id vehicle_id~%float32 left_size~%float32 right_size~%float32 front_size~%float32 rear_size~%float32 min_height~%float32 max_height~%float32 payload~%float32 max_pos_x_vel~%float32 max_neg_x_vel~%float32 max_pos_x_acc~%float32 max_neg_x_acc~%float32 max_pos_y_vel~%float32 max_neg_y_vel~%float32 max_pos_y_acc~%float32 max_neg_y_acc~%float32 max_pos_ang_vel~%float32 max_neg_ang_vel~%float32 velocity_control_sensitivity~%float32 min_turning_radius~%float32 batt_capacity~%float32 batt_max_voltage~%string vehicle_type~%string vendor ~%RobotAction[] action_capability~%~%================================================================================~%MSG: ran/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: ran/Tuple~%string type~%string name~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotDescription)))
  "Returns full string definition for message of type 'RobotDescription"
  (cl:format cl:nil "Header header~%Id robot_id~%RobotDescriptionAGV agv_msg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ran/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: ran/RobotDescriptionAGV~%Header header~%Id vehicle_id~%float32 left_size~%float32 right_size~%float32 front_size~%float32 rear_size~%float32 min_height~%float32 max_height~%float32 payload~%float32 max_pos_x_vel~%float32 max_neg_x_vel~%float32 max_pos_x_acc~%float32 max_neg_x_acc~%float32 max_pos_y_vel~%float32 max_neg_y_vel~%float32 max_pos_y_acc~%float32 max_neg_y_acc~%float32 max_pos_ang_vel~%float32 max_neg_ang_vel~%float32 velocity_control_sensitivity~%float32 min_turning_radius~%float32 batt_capacity~%float32 batt_max_voltage~%string vehicle_type~%string vendor ~%RobotAction[] action_capability~%~%================================================================================~%MSG: ran/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: ran/Tuple~%string type~%string name~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotDescription>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'agv_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotDescription>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotDescription
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':agv_msg (agv_msg msg))
))
