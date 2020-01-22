; Auto-generated. Do not edit!


(cl:in-package opil_v2-msg)


;//! \htmlinclude AssignmentId.msg.html

(cl:defclass <AssignmentId> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (action_id
    :reader action_id
    :initarg :action_id
    :type cl:integer
    :initform 0)
   (motion_id
    :reader motion_id
    :initarg :motion_id
    :type cl:integer
    :initform 0))
)

(cl:defclass AssignmentId (<AssignmentId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignmentId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignmentId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opil_v2-msg:<AssignmentId> is deprecated: use opil_v2-msg:AssignmentId instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <AssignmentId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:task_id-val is deprecated.  Use opil_v2-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'action_id-val :lambda-list '(m))
(cl:defmethod action_id-val ((m <AssignmentId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:action_id-val is deprecated.  Use opil_v2-msg:action_id instead.")
  (action_id m))

(cl:ensure-generic-function 'motion_id-val :lambda-list '(m))
(cl:defmethod motion_id-val ((m <AssignmentId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:motion_id-val is deprecated.  Use opil_v2-msg:motion_id instead.")
  (motion_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignmentId>) ostream)
  "Serializes a message object of type '<AssignmentId>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'action_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'action_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motion_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'motion_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'motion_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignmentId>) istream)
  "Deserializes a message object of type '<AssignmentId>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'action_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'action_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motion_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'motion_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'motion_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignmentId>)))
  "Returns string type for a message object of type '<AssignmentId>"
  "opil_v2/AssignmentId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignmentId)))
  "Returns string type for a message object of type 'AssignmentId"
  "opil_v2/AssignmentId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignmentId>)))
  "Returns md5sum for a message object of type '<AssignmentId>"
  "03abaced4ef628770599470870550be6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignmentId)))
  "Returns md5sum for a message object of type 'AssignmentId"
  "03abaced4ef628770599470870550be6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignmentId>)))
  "Returns full string definition for message of type '<AssignmentId>"
  (cl:format cl:nil "# Message for the definition of the ids of an Assignment~%uint32 task_id~%uint32 action_id~%uint32 motion_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignmentId)))
  "Returns full string definition for message of type 'AssignmentId"
  (cl:format cl:nil "# Message for the definition of the ids of an Assignment~%uint32 task_id~%uint32 action_id~%uint32 motion_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignmentId>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignmentId>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignmentId
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':action_id (action_id msg))
    (cl:cons ':motion_id (motion_id msg))
))
