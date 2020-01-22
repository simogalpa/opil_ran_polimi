; Auto-generated. Do not edit!


(cl:in-package opil_v2-msg)


;//! \htmlinclude CancelTask.msg.html

(cl:defclass <CancelTask> (roslisp-msg-protocol:ros-message)
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
   (task_id
    :reader task_id
    :initarg :task_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (action_id
    :reader action_id
    :initarg :action_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (motion_id
    :reader motion_id
    :initarg :motion_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id)))
)

(cl:defclass CancelTask (<CancelTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CancelTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CancelTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opil_v2-msg:<CancelTask> is deprecated: use opil_v2-msg:CancelTask instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CancelTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:header-val is deprecated.  Use opil_v2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <CancelTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:robot_id-val is deprecated.  Use opil_v2-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <CancelTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:task_id-val is deprecated.  Use opil_v2-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'action_id-val :lambda-list '(m))
(cl:defmethod action_id-val ((m <CancelTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:action_id-val is deprecated.  Use opil_v2-msg:action_id instead.")
  (action_id m))

(cl:ensure-generic-function 'motion_id-val :lambda-list '(m))
(cl:defmethod motion_id-val ((m <CancelTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:motion_id-val is deprecated.  Use opil_v2-msg:motion_id instead.")
  (motion_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CancelTask>) ostream)
  "Serializes a message object of type '<CancelTask>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CancelTask>) istream)
  "Deserializes a message object of type '<CancelTask>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CancelTask>)))
  "Returns string type for a message object of type '<CancelTask>"
  "opil_v2/CancelTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CancelTask)))
  "Returns string type for a message object of type 'CancelTask"
  "opil_v2/CancelTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CancelTask>)))
  "Returns md5sum for a message object of type '<CancelTask>"
  "40a0b6cb455a9001a19467ac472b07a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CancelTask)))
  "Returns md5sum for a message object of type 'CancelTask"
  "40a0b6cb455a9001a19467ac472b07a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CancelTask>)))
  "Returns full string definition for message of type '<CancelTask>"
  (cl:format cl:nil "# Message for deleting a task~%Header header~%Id robot_id~%# task ID instead of action id because the message deletes the whole task~%# the task is a sequence of motions and actions~%Id task_id~%Id action_id~%Id motion_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CancelTask)))
  "Returns full string definition for message of type 'CancelTask"
  (cl:format cl:nil "# Message for deleting a task~%Header header~%Id robot_id~%# task ID instead of action id because the message deletes the whole task~%# the task is a sequence of motions and actions~%Id task_id~%Id action_id~%Id motion_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CancelTask>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CancelTask>))
  "Converts a ROS message object to a list"
  (cl:list 'CancelTask
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':action_id (action_id msg))
    (cl:cons ':motion_id (motion_id msg))
))
