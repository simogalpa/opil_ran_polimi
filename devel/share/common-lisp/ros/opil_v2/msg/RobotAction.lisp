; Auto-generated. Do not edit!


(cl:in-package opil_v2-msg)


;//! \htmlinclude RobotAction.msg.html

(cl:defclass <RobotAction> (roslisp-msg-protocol:ros-message)
  ((category
    :reader category
    :initarg :category
    :type cl:fixnum
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (attributes
    :reader attributes
    :initarg :attributes
    :type (cl:vector opil_v2-msg:Tuple)
   :initform (cl:make-array 0 :element-type 'opil_v2-msg:Tuple :initial-element (cl:make-instance 'opil_v2-msg:Tuple)))
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass RobotAction (<RobotAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opil_v2-msg:<RobotAction> is deprecated: use opil_v2-msg:RobotAction instead.")))

(cl:ensure-generic-function 'category-val :lambda-list '(m))
(cl:defmethod category-val ((m <RobotAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:category-val is deprecated.  Use opil_v2-msg:category instead.")
  (category m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <RobotAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:action-val is deprecated.  Use opil_v2-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'attributes-val :lambda-list '(m))
(cl:defmethod attributes-val ((m <RobotAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:attributes-val is deprecated.  Use opil_v2-msg:attributes instead.")
  (attributes m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <RobotAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:description-val is deprecated.  Use opil_v2-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotAction>)))
    "Constants for message type '<RobotAction>"
  '((:CATEGORY_UNDEFINED . 0)
    (:CATEGORY_NONE . 5)
    (:CATEGORY_LOAD . 10)
    (:CATEGORY_MANUAL_LOAD_START . 11)
    (:CATEGORY_MANUAL_LOAD_DONE . 12)
    (:CATEGORY_UNLOAD . 20)
    (:CATEGORY_MANUAL_UNLOAD_START . 21)
    (:CATEGORY_MANUAL_UNLOAD_DONE . 22)
    (:CATEGORY_START_CHARGING . 30)
    (:CATEGORY_STOP_CHARGING . 31))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotAction)))
    "Constants for message type 'RobotAction"
  '((:CATEGORY_UNDEFINED . 0)
    (:CATEGORY_NONE . 5)
    (:CATEGORY_LOAD . 10)
    (:CATEGORY_MANUAL_LOAD_START . 11)
    (:CATEGORY_MANUAL_LOAD_DONE . 12)
    (:CATEGORY_UNLOAD . 20)
    (:CATEGORY_MANUAL_UNLOAD_START . 21)
    (:CATEGORY_MANUAL_UNLOAD_DONE . 22)
    (:CATEGORY_START_CHARGING . 30)
    (:CATEGORY_STOP_CHARGING . 31))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotAction>) ostream)
  "Serializes a message object of type '<RobotAction>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'category)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'attributes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'attributes))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotAction>) istream)
  "Deserializes a message object of type '<RobotAction>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'category)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'attributes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'attributes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'opil_v2-msg:Tuple))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotAction>)))
  "Returns string type for a message object of type '<RobotAction>"
  "opil_v2/RobotAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotAction)))
  "Returns string type for a message object of type 'RobotAction"
  "opil_v2/RobotAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotAction>)))
  "Returns md5sum for a message object of type '<RobotAction>"
  "9d6573f0dd507d2eb40dd1e6516c59f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotAction)))
  "Returns md5sum for a message object of type 'RobotAction"
  "9d6573f0dd507d2eb40dd1e6516c59f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotAction>)))
  "Returns full string definition for message of type '<RobotAction>"
  (cl:format cl:nil "# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: opil_v2/Tuple~%string type~%string name~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotAction)))
  "Returns full string definition for message of type 'RobotAction"
  (cl:format cl:nil "# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: opil_v2/Tuple~%string type~%string name~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotAction>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'attributes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotAction>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotAction
    (cl:cons ':category (category msg))
    (cl:cons ':action (action msg))
    (cl:cons ':attributes (attributes msg))
    (cl:cons ':description (description msg))
))
