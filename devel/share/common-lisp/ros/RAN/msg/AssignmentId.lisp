; Auto-generated. Do not edit!


(cl:in-package RAN-msg)


;//! \htmlinclude AssignmentId.msg.html

(cl:defclass <AssignmentId> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (action_id
    :reader action_id
    :initarg :action_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (motion_id
    :reader motion_id
    :initarg :motion_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id)))
)

(cl:defclass AssignmentId (<AssignmentId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignmentId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignmentId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RAN-msg:<AssignmentId> is deprecated: use RAN-msg:AssignmentId instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <AssignmentId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:task_id-val is deprecated.  Use RAN-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'action_id-val :lambda-list '(m))
(cl:defmethod action_id-val ((m <AssignmentId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:action_id-val is deprecated.  Use RAN-msg:action_id instead.")
  (action_id m))

(cl:ensure-generic-function 'motion_id-val :lambda-list '(m))
(cl:defmethod motion_id-val ((m <AssignmentId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RAN-msg:motion_id-val is deprecated.  Use RAN-msg:motion_id instead.")
  (motion_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignmentId>) ostream)
  "Serializes a message object of type '<AssignmentId>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignmentId>) istream)
  "Deserializes a message object of type '<AssignmentId>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignmentId>)))
  "Returns string type for a message object of type '<AssignmentId>"
  "RAN/AssignmentId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignmentId)))
  "Returns string type for a message object of type 'AssignmentId"
  "RAN/AssignmentId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignmentId>)))
  "Returns md5sum for a message object of type '<AssignmentId>"
  "4202b775afdccaf886a80f2adcd776fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignmentId)))
  "Returns md5sum for a message object of type 'AssignmentId"
  "4202b775afdccaf886a80f2adcd776fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignmentId>)))
  "Returns full string definition for message of type '<AssignmentId>"
  (cl:format cl:nil "# Message for the definition of the ids of an Assignment~%mars_common_msgs/Id task_id~%mars_common_msgs/Id action_id~%mars_common_msgs/Id motion_id~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignmentId)))
  "Returns full string definition for message of type 'AssignmentId"
  (cl:format cl:nil "# Message for the definition of the ids of an Assignment~%mars_common_msgs/Id task_id~%mars_common_msgs/Id action_id~%mars_common_msgs/Id motion_id~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignmentId>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignmentId>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignmentId
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':action_id (action_id msg))
    (cl:cons ':motion_id (motion_id msg))
))
