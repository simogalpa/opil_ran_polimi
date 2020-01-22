; Auto-generated. Do not edit!


(cl:in-package mars_agent_physical_robot_msgs-msg)


;//! \htmlinclude RobotAgentProperties.msg.html

(cl:defclass <RobotAgentProperties> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type mars_common_msgs-msg:Id
    :initform (cl:make-instance 'mars_common_msgs-msg:Id))
   (type
    :reader type
    :initarg :type
    :type mars_agent_physical_robot_msgs-msg:VehicleType
    :initform (cl:make-instance 'mars_agent_physical_robot_msgs-msg:VehicleType))
   (footprint
    :reader footprint
    :initarg :footprint
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped))
   (min_height
    :reader min_height
    :initarg :min_height
    :type cl:float
    :initform 0.0)
   (max_height
    :reader max_height
    :initarg :max_height
    :type cl:float
    :initform 0.0)
   (payload
    :reader payload
    :initarg :payload
    :type cl:float
    :initform 0.0)
   (max_pos_x_vel
    :reader max_pos_x_vel
    :initarg :max_pos_x_vel
    :type cl:float
    :initform 0.0)
   (max_neg_x_vel
    :reader max_neg_x_vel
    :initarg :max_neg_x_vel
    :type cl:float
    :initform 0.0)
   (max_pos_x_acc
    :reader max_pos_x_acc
    :initarg :max_pos_x_acc
    :type cl:float
    :initform 0.0)
   (max_neg_x_acc
    :reader max_neg_x_acc
    :initarg :max_neg_x_acc
    :type cl:float
    :initform 0.0)
   (max_pos_y_vel
    :reader max_pos_y_vel
    :initarg :max_pos_y_vel
    :type cl:float
    :initform 0.0)
   (max_neg_y_vel
    :reader max_neg_y_vel
    :initarg :max_neg_y_vel
    :type cl:float
    :initform 0.0)
   (max_pos_y_acc
    :reader max_pos_y_acc
    :initarg :max_pos_y_acc
    :type cl:float
    :initform 0.0)
   (max_neg_y_acc
    :reader max_neg_y_acc
    :initarg :max_neg_y_acc
    :type cl:float
    :initform 0.0)
   (max_pos_ang_vel
    :reader max_pos_ang_vel
    :initarg :max_pos_ang_vel
    :type cl:float
    :initform 0.0)
   (max_neg_ang_vel
    :reader max_neg_ang_vel
    :initarg :max_neg_ang_vel
    :type cl:float
    :initform 0.0)
   (max_pos_ang_acc
    :reader max_pos_ang_acc
    :initarg :max_pos_ang_acc
    :type cl:float
    :initform 0.0)
   (max_neg_ang_acc
    :reader max_neg_ang_acc
    :initarg :max_neg_ang_acc
    :type cl:float
    :initform 0.0)
   (velocity_control_sensitivity
    :reader velocity_control_sensitivity
    :initarg :velocity_control_sensitivity
    :type cl:float
    :initform 0.0)
   (min_turning_radius
    :reader min_turning_radius
    :initarg :min_turning_radius
    :type cl:float
    :initform 0.0)
   (batt_capacity
    :reader batt_capacity
    :initarg :batt_capacity
    :type cl:float
    :initform 0.0)
   (batt_max_voltage
    :reader batt_max_voltage
    :initarg :batt_max_voltage
    :type cl:float
    :initform 0.0)
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (vendor
    :reader vendor
    :initarg :vendor
    :type cl:string
    :initform "")
   (action_capability
    :reader action_capability
    :initarg :action_capability
    :type (cl:vector mars_agent_physical_robot_msgs-msg:RobotAction)
   :initform (cl:make-array 0 :element-type 'mars_agent_physical_robot_msgs-msg:RobotAction :initial-element (cl:make-instance 'mars_agent_physical_robot_msgs-msg:RobotAction))))
)

(cl:defclass RobotAgentProperties (<RobotAgentProperties>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotAgentProperties>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotAgentProperties)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mars_agent_physical_robot_msgs-msg:<RobotAgentProperties> is deprecated: use mars_agent_physical_robot_msgs-msg:RobotAgentProperties instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:robot_id-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:type-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:footprint-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:footprint instead.")
  (footprint m))

(cl:ensure-generic-function 'min_height-val :lambda-list '(m))
(cl:defmethod min_height-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:min_height-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:min_height instead.")
  (min_height m))

(cl:ensure-generic-function 'max_height-val :lambda-list '(m))
(cl:defmethod max_height-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_height-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_height instead.")
  (max_height m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:payload-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:payload instead.")
  (payload m))

(cl:ensure-generic-function 'max_pos_x_vel-val :lambda-list '(m))
(cl:defmethod max_pos_x_vel-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_pos_x_vel-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_pos_x_vel instead.")
  (max_pos_x_vel m))

(cl:ensure-generic-function 'max_neg_x_vel-val :lambda-list '(m))
(cl:defmethod max_neg_x_vel-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_neg_x_vel-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_neg_x_vel instead.")
  (max_neg_x_vel m))

(cl:ensure-generic-function 'max_pos_x_acc-val :lambda-list '(m))
(cl:defmethod max_pos_x_acc-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_pos_x_acc-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_pos_x_acc instead.")
  (max_pos_x_acc m))

(cl:ensure-generic-function 'max_neg_x_acc-val :lambda-list '(m))
(cl:defmethod max_neg_x_acc-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_neg_x_acc-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_neg_x_acc instead.")
  (max_neg_x_acc m))

(cl:ensure-generic-function 'max_pos_y_vel-val :lambda-list '(m))
(cl:defmethod max_pos_y_vel-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_pos_y_vel-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_pos_y_vel instead.")
  (max_pos_y_vel m))

(cl:ensure-generic-function 'max_neg_y_vel-val :lambda-list '(m))
(cl:defmethod max_neg_y_vel-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_neg_y_vel-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_neg_y_vel instead.")
  (max_neg_y_vel m))

(cl:ensure-generic-function 'max_pos_y_acc-val :lambda-list '(m))
(cl:defmethod max_pos_y_acc-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_pos_y_acc-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_pos_y_acc instead.")
  (max_pos_y_acc m))

(cl:ensure-generic-function 'max_neg_y_acc-val :lambda-list '(m))
(cl:defmethod max_neg_y_acc-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_neg_y_acc-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_neg_y_acc instead.")
  (max_neg_y_acc m))

(cl:ensure-generic-function 'max_pos_ang_vel-val :lambda-list '(m))
(cl:defmethod max_pos_ang_vel-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_pos_ang_vel-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_pos_ang_vel instead.")
  (max_pos_ang_vel m))

(cl:ensure-generic-function 'max_neg_ang_vel-val :lambda-list '(m))
(cl:defmethod max_neg_ang_vel-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_neg_ang_vel-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_neg_ang_vel instead.")
  (max_neg_ang_vel m))

(cl:ensure-generic-function 'max_pos_ang_acc-val :lambda-list '(m))
(cl:defmethod max_pos_ang_acc-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_pos_ang_acc-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_pos_ang_acc instead.")
  (max_pos_ang_acc m))

(cl:ensure-generic-function 'max_neg_ang_acc-val :lambda-list '(m))
(cl:defmethod max_neg_ang_acc-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:max_neg_ang_acc-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:max_neg_ang_acc instead.")
  (max_neg_ang_acc m))

(cl:ensure-generic-function 'velocity_control_sensitivity-val :lambda-list '(m))
(cl:defmethod velocity_control_sensitivity-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:velocity_control_sensitivity-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:velocity_control_sensitivity instead.")
  (velocity_control_sensitivity m))

(cl:ensure-generic-function 'min_turning_radius-val :lambda-list '(m))
(cl:defmethod min_turning_radius-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:min_turning_radius-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:min_turning_radius instead.")
  (min_turning_radius m))

(cl:ensure-generic-function 'batt_capacity-val :lambda-list '(m))
(cl:defmethod batt_capacity-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:batt_capacity-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:batt_capacity instead.")
  (batt_capacity m))

(cl:ensure-generic-function 'batt_max_voltage-val :lambda-list '(m))
(cl:defmethod batt_max_voltage-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:batt_max_voltage-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:batt_max_voltage instead.")
  (batt_max_voltage m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:weight-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'vendor-val :lambda-list '(m))
(cl:defmethod vendor-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:vendor-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:vendor instead.")
  (vendor m))

(cl:ensure-generic-function 'action_capability-val :lambda-list '(m))
(cl:defmethod action_capability-val ((m <RobotAgentProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:action_capability-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:action_capability instead.")
  (action_capability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotAgentProperties>) ostream)
  "Serializes a message object of type '<RobotAgentProperties>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'footprint) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_pos_x_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_neg_x_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_pos_x_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_neg_x_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_pos_y_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_neg_y_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_pos_y_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_neg_y_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_pos_ang_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_neg_ang_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_pos_ang_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_neg_ang_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_control_sensitivity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_turning_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batt_capacity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batt_max_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vendor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vendor))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action_capability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'action_capability))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotAgentProperties>) istream)
  "Deserializes a message object of type '<RobotAgentProperties>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'footprint) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'payload) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pos_x_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_neg_x_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pos_x_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_neg_x_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pos_y_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_neg_y_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pos_y_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_neg_y_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pos_ang_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_neg_ang_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pos_ang_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_neg_ang_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_control_sensitivity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_turning_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batt_capacity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batt_max_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vendor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vendor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action_capability) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action_capability)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mars_agent_physical_robot_msgs-msg:RobotAction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotAgentProperties>)))
  "Returns string type for a message object of type '<RobotAgentProperties>"
  "mars_agent_physical_robot_msgs/RobotAgentProperties")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotAgentProperties)))
  "Returns string type for a message object of type 'RobotAgentProperties"
  "mars_agent_physical_robot_msgs/RobotAgentProperties")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotAgentProperties>)))
  "Returns md5sum for a message object of type '<RobotAgentProperties>"
  "44f789db54776ca317c570895c1f3583")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotAgentProperties)))
  "Returns md5sum for a message object of type 'RobotAgentProperties"
  "44f789db54776ca317c570895c1f3583")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotAgentProperties>)))
  "Returns full string definition for message of type '<RobotAgentProperties>"
  (cl:format cl:nil "mars_common_msgs/Id robot_id~%VehicleType type~%geometry_msgs/PolygonStamped footprint~%float32 min_height~%float32 max_height~%float32 payload~%float32 max_pos_x_vel~%float32 max_neg_x_vel~%float32 max_pos_x_acc~%float32 max_neg_x_acc~%float32 max_pos_y_vel~%float32 max_neg_y_vel~%float32 max_pos_y_acc~%float32 max_neg_y_acc~%float32 max_pos_ang_vel~%float32 max_neg_ang_vel~%float32 max_pos_ang_acc~%float32 max_neg_ang_acc~%float32 velocity_control_sensitivity~%float32 min_turning_radius~%float32 batt_capacity~%float32 batt_max_voltage~%float32 weight~%string vendor ~%RobotAction[] action_capability~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%================================================================================~%MSG: mars_agent_physical_robot_msgs/VehicleType~%# supported vehicle_types~%uint8 VEHICLE_TYPE_UNKNOWN=0~%# TODO:add correct vehicle_types!~%uint8 VEHICLE_TYPE_SUPPLY_VEHICLE=1~%uint8 VEHICLE_TYPE_ASSEMBLY_VEHICLE=2~%~%# type of the vehicle~%uint8 vehicle_type~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: mars_agent_physical_robot_msgs/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%mars_common_msgs/Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: mars_common_msgs/Tuple~%string type~%string name~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotAgentProperties)))
  "Returns full string definition for message of type 'RobotAgentProperties"
  (cl:format cl:nil "mars_common_msgs/Id robot_id~%VehicleType type~%geometry_msgs/PolygonStamped footprint~%float32 min_height~%float32 max_height~%float32 payload~%float32 max_pos_x_vel~%float32 max_neg_x_vel~%float32 max_pos_x_acc~%float32 max_neg_x_acc~%float32 max_pos_y_vel~%float32 max_neg_y_vel~%float32 max_pos_y_acc~%float32 max_neg_y_acc~%float32 max_pos_ang_vel~%float32 max_neg_ang_vel~%float32 max_pos_ang_acc~%float32 max_neg_ang_acc~%float32 velocity_control_sensitivity~%float32 min_turning_radius~%float32 batt_capacity~%float32 batt_max_voltage~%float32 weight~%string vendor ~%RobotAction[] action_capability~%~%================================================================================~%MSG: mars_common_msgs/Id~%# Universally Unique Identifier (UUID)~%# A UUID is a 128-bit number used to identify information in computer systems. ~%# The term globally unique identifier (GUID) is also used. ~%# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier~%uint8[16] uuid~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%string description~%~%================================================================================~%MSG: mars_agent_physical_robot_msgs/VehicleType~%# supported vehicle_types~%uint8 VEHICLE_TYPE_UNKNOWN=0~%# TODO:add correct vehicle_types!~%uint8 VEHICLE_TYPE_SUPPLY_VEHICLE=1~%uint8 VEHICLE_TYPE_ASSEMBLY_VEHICLE=2~%~%# type of the vehicle~%uint8 vehicle_type~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: mars_agent_physical_robot_msgs/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%mars_common_msgs/Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: mars_common_msgs/Tuple~%string type~%string name~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotAgentProperties>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'footprint))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'vendor))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action_capability) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotAgentProperties>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotAgentProperties
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':footprint (footprint msg))
    (cl:cons ':min_height (min_height msg))
    (cl:cons ':max_height (max_height msg))
    (cl:cons ':payload (payload msg))
    (cl:cons ':max_pos_x_vel (max_pos_x_vel msg))
    (cl:cons ':max_neg_x_vel (max_neg_x_vel msg))
    (cl:cons ':max_pos_x_acc (max_pos_x_acc msg))
    (cl:cons ':max_neg_x_acc (max_neg_x_acc msg))
    (cl:cons ':max_pos_y_vel (max_pos_y_vel msg))
    (cl:cons ':max_neg_y_vel (max_neg_y_vel msg))
    (cl:cons ':max_pos_y_acc (max_pos_y_acc msg))
    (cl:cons ':max_neg_y_acc (max_neg_y_acc msg))
    (cl:cons ':max_pos_ang_vel (max_pos_ang_vel msg))
    (cl:cons ':max_neg_ang_vel (max_neg_ang_vel msg))
    (cl:cons ':max_pos_ang_acc (max_pos_ang_acc msg))
    (cl:cons ':max_neg_ang_acc (max_neg_ang_acc msg))
    (cl:cons ':velocity_control_sensitivity (velocity_control_sensitivity msg))
    (cl:cons ':min_turning_radius (min_turning_radius msg))
    (cl:cons ':batt_capacity (batt_capacity msg))
    (cl:cons ':batt_max_voltage (batt_max_voltage msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':vendor (vendor msg))
    (cl:cons ':action_capability (action_capability msg))
))
