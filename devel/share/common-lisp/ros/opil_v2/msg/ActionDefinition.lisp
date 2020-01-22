; Auto-generated. Do not edit!


(cl:in-package opil_v2-msg)


;//! \htmlinclude ActionDefinition.msg.html

(cl:defclass <ActionDefinition> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (action_id
    :reader action_id
    :initarg :action_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (task_id
    :reader task_id
    :initarg :task_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (action
    :reader action
    :initarg :action
    :type opil_v2-msg:RobotAction
    :initform (cl:make-instance 'opil_v2-msg:RobotAction)))
)

(cl:defclass ActionDefinition (<ActionDefinition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionDefinition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionDefinition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opil_v2-msg:<ActionDefinition> is deprecated: use opil_v2-msg:ActionDefinition instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ActionDefinition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:header-val is deprecated.  Use opil_v2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <ActionDefinition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:robot_id-val is deprecated.  Use opil_v2-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'action_id-val :lambda-list '(m))
(cl:defmethod action_id-val ((m <ActionDefinition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:action_id-val is deprecated.  Use opil_v2-msg:action_id instead.")
  (action_id m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <ActionDefinition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:task_id-val is deprecated.  Use opil_v2-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ActionDefinition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:action-val is deprecated.  Use opil_v2-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionDefinition>) ostream)
  "Serializes a message object of type '<ActionDefinition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionDefinition>) istream)
  "Deserializes a message object of type '<ActionDefinition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionDefinition>)))
  "Returns string type for a message object of type '<ActionDefinition>"
  "opil_v2/ActionDefinition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionDefinition)))
  "Returns string type for a message object of type 'ActionDefinition"
  "opil_v2/ActionDefinition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionDefinition>)))
  "Returns md5sum for a message object of type '<ActionDefinition>"
  "251964ecde4dcc6d2653784d4aa1be70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionDefinition)))
  "Returns md5sum for a message object of type 'ActionDefinition"
  "251964ecde4dcc6d2653784d4aa1be70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionDefinition>)))
  "Returns full string definition for message of type '<ActionDefinition>"
  (cl:format cl:nil "# Message for the definition of an Action~%std_msgs/Header header~%Id robot_id~%Id action_id~%Id task_id~%#definition of the action~%RobotAction action~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: opil_v2/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: opil_v2/Tuple~%string type~%string name~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionDefinition)))
  "Returns full string definition for message of type 'ActionDefinition"
  (cl:format cl:nil "# Message for the definition of an Action~%std_msgs/Header header~%Id robot_id~%Id action_id~%Id task_id~%#definition of the action~%RobotAction action~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: opil_v2/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: opil_v2/Tuple~%string type~%string name~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionDefinition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionDefinition>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionDefinition
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':action_id (action_id msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':action (action msg))
))
