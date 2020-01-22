; Auto-generated. Do not edit!


(cl:in-package mars_agent_physical_robot_msgs-msg)


;//! \htmlinclude ActualState.msg.html

(cl:defclass <ActualState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (MoveBaseSimpleState
    :reader MoveBaseSimpleState
    :initarg :MoveBaseSimpleState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ActualState (<ActualState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActualState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActualState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mars_agent_physical_robot_msgs-msg:<ActualState> is deprecated: use mars_agent_physical_robot_msgs-msg:ActualState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ActualState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:header-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <ActualState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:robot_id-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'MoveBaseSimpleState-val :lambda-list '(m))
(cl:defmethod MoveBaseSimpleState-val ((m <ActualState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:MoveBaseSimpleState-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:MoveBaseSimpleState instead.")
  (MoveBaseSimpleState m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ActualState>)))
    "Constants for message type '<ActualState>"
  '((:MBS_NO_POSITION . 0)
    (:MBS_WAITING_FOR_INIT . 1)
    (:MBS_READY . 2)
    (:MBS_FIRST_ROTATION . 3)
    (:MBS_MOVING . 4)
    (:MBS_SECOND_ROTATION . 5)
    (:MBS_FINISHED . 6)
    (:MBS_FETCH_NEXT_INSTRUCTION . 7)
    (:MBS_EXECUTE_ACTION . 8)
    (:MBS_OBSTACLE . 9)
    (:MBS_ERROR . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ActualState)))
    "Constants for message type 'ActualState"
  '((:MBS_NO_POSITION . 0)
    (:MBS_WAITING_FOR_INIT . 1)
    (:MBS_READY . 2)
    (:MBS_FIRST_ROTATION . 3)
    (:MBS_MOVING . 4)
    (:MBS_SECOND_ROTATION . 5)
    (:MBS_FINISHED . 6)
    (:MBS_FETCH_NEXT_INSTRUCTION . 7)
    (:MBS_EXECUTE_ACTION . 8)
    (:MBS_OBSTACLE . 9)
    (:MBS_ERROR . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActualState>) ostream)
  "Serializes a message object of type '<ActualState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MoveBaseSimpleState)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActualState>) istream)
  "Deserializes a message object of type '<ActualState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MoveBaseSimpleState)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActualState>)))
  "Returns string type for a message object of type '<ActualState>"
  "mars_agent_physical_robot_msgs/ActualState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActualState)))
  "Returns string type for a message object of type 'ActualState"
  "mars_agent_physical_robot_msgs/ActualState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActualState>)))
  "Returns md5sum for a message object of type '<ActualState>"
  "218dfb6147c7753072d56e5c9678828c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActualState)))
  "Returns md5sum for a message object of type 'ActualState"
  "218dfb6147c7753072d56e5c9678828c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActualState>)))
  "Returns full string definition for message of type '<ActualState>"
  (cl:format cl:nil "# Message for the Actual State~%std_msgs/Header header~%mars_common_msgs/Id robot_id~%# Definition of all possible States~%uint8 MBS_NO_POSITION = 0~%uint8 MBS_WAITING_FOR_INIT = 1~%uint8 MBS_READY = 2~%uint8 MBS_FIRST_ROTATION = 3~%uint8 MBS_MOVING = 4~%uint8 MBS_SECOND_ROTATION = 5~%uint8 MBS_FINISHED = 6~%uint8 MBS_FETCH_NEXT_INSTRUCTION = 7~%uint8 MBS_EXECUTE_ACTION = 8~%uint8 MBS_OBSTACLE = 9~%uint8 MBS_ERROR = 10~%uint8 MoveBaseSimpleState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActualState)))
  "Returns full string definition for message of type 'ActualState"
  (cl:format cl:nil "# Message for the Actual State~%std_msgs/Header header~%mars_common_msgs/Id robot_id~%# Definition of all possible States~%uint8 MBS_NO_POSITION = 0~%uint8 MBS_WAITING_FOR_INIT = 1~%uint8 MBS_READY = 2~%uint8 MBS_FIRST_ROTATION = 3~%uint8 MBS_MOVING = 4~%uint8 MBS_SECOND_ROTATION = 5~%uint8 MBS_FINISHED = 6~%uint8 MBS_FETCH_NEXT_INSTRUCTION = 7~%uint8 MBS_EXECUTE_ACTION = 8~%uint8 MBS_OBSTACLE = 9~%uint8 MBS_ERROR = 10~%uint8 MoveBaseSimpleState~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActualState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActualState>))
  "Converts a ROS message object to a list"
  (cl:list 'ActualState
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':MoveBaseSimpleState (MoveBaseSimpleState msg))
))
