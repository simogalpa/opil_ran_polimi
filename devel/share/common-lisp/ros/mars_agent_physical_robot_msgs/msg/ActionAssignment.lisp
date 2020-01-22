; Auto-generated. Do not edit!


(cl:in-package mars_agent_physical_robot_msgs-msg)


;//! \htmlinclude ActionAssignment.msg.html

(cl:defclass <ActionAssignment> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (action_id
    :reader action_id
    :initarg :action_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (task_id
    :reader task_id
    :initarg :task_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (sequence
    :reader sequence
    :initarg :sequence
    :type mars_agent_physical_robot_msgs-msg:Sequence
    :initform (cl:make-instance 'mars_agent_physical_robot_msgs-msg:Sequence))
   (robot_action
    :reader robot_action
    :initarg :robot_action
    :type mars_agent_physical_robot_msgs-msg:RobotAction
    :initform (cl:make-instance 'mars_agent_physical_robot_msgs-msg:RobotAction)))
)

(cl:defclass ActionAssignment (<ActionAssignment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionAssignment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionAssignment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mars_agent_physical_robot_msgs-msg:<ActionAssignment> is deprecated: use mars_agent_physical_robot_msgs-msg:ActionAssignment instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <ActionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:robot_id-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'action_id-val :lambda-list '(m))
(cl:defmethod action_id-val ((m <ActionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:action_id-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:action_id instead.")
  (action_id m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <ActionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:task_id-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <ActionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:sequence-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'robot_action-val :lambda-list '(m))
(cl:defmethod robot_action-val ((m <ActionAssignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:robot_action-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:robot_action instead.")
  (robot_action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionAssignment>) ostream)
  "Serializes a message object of type '<ActionAssignment>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sequence) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionAssignment>) istream)
  "Deserializes a message object of type '<ActionAssignment>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sequence) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionAssignment>)))
  "Returns string type for a message object of type '<ActionAssignment>"
  "mars_agent_physical_robot_msgs/ActionAssignment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionAssignment)))
  "Returns string type for a message object of type 'ActionAssignment"
  "mars_agent_physical_robot_msgs/ActionAssignment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionAssignment>)))
  "Returns md5sum for a message object of type '<ActionAssignment>"
  "efed3373da3eca18595f4459a9e9b329")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionAssignment)))
  "Returns md5sum for a message object of type 'ActionAssignment"
  "efed3373da3eca18595f4459a9e9b329")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionAssignment>)))
  "Returns full string definition for message of type '<ActionAssignment>"
  (cl:format cl:nil "# Message for the definition of an Action~%mars_common_msgs/Id robot_id~%mars_common_msgs/Id action_id~%mars_common_msgs/Id task_id~%# Position of the action within the order~%Sequence sequence~%RobotAction robot_action~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%================================================================================~%MSG: mars_agent_physical_robot_msgs/Sequence~%# Message for defining a sequence.~%~%# Actual position in the sequence. The sequence starts at 1! ~%int32 sequence_number~%# Overall lenght of the sequence~%int32 length~%~%================================================================================~%MSG: mars_agent_physical_robot_msgs/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%mars_common_msgs/Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: mars_common_msgs/Tuple~%string type~%string name~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionAssignment)))
  "Returns full string definition for message of type 'ActionAssignment"
  (cl:format cl:nil "# Message for the definition of an Action~%mars_common_msgs/Id robot_id~%mars_common_msgs/Id action_id~%mars_common_msgs/Id task_id~%# Position of the action within the order~%Sequence sequence~%RobotAction robot_action~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%================================================================================~%MSG: mars_agent_physical_robot_msgs/Sequence~%# Message for defining a sequence.~%~%# Actual position in the sequence. The sequence starts at 1! ~%int32 sequence_number~%# Overall lenght of the sequence~%int32 length~%~%================================================================================~%MSG: mars_agent_physical_robot_msgs/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%mars_common_msgs/Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: mars_common_msgs/Tuple~%string type~%string name~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionAssignment>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sequence))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionAssignment>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionAssignment
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':action_id (action_id msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':robot_action (robot_action msg))
))
