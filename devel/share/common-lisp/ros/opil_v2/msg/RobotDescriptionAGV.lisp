; Auto-generated. Do not edit!


(cl:in-package opil_v2-msg)


;//! \htmlinclude RobotDescriptionAGV.msg.html

(cl:defclass <RobotDescriptionAGV> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_id
    :reader vehicle_id
    :initarg :vehicle_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (left_size
    :reader left_size
    :initarg :left_size
    :type cl:float
    :initform 0.0)
   (right_size
    :reader right_size
    :initarg :right_size
    :type cl:float
    :initform 0.0)
   (front_size
    :reader front_size
    :initarg :front_size
    :type cl:float
    :initform 0.0)
   (rear_size
    :reader rear_size
    :initarg :rear_size
    :type cl:float
    :initform 0.0)
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
   (vehicle_type
    :reader vehicle_type
    :initarg :vehicle_type
    :type cl:string
    :initform "")
   (vendor
    :reader vendor
    :initarg :vendor
    :type cl:string
    :initform "")
   (action_capability
    :reader action_capability
    :initarg :action_capability
    :type (cl:vector opil_v2-msg:RobotAction)
   :initform (cl:make-array 0 :element-type 'opil_v2-msg:RobotAction :initial-element (cl:make-instance 'opil_v2-msg:RobotAction))))
)

(cl:defclass RobotDescriptionAGV (<RobotDescriptionAGV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotDescriptionAGV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotDescriptionAGV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opil_v2-msg:<RobotDescriptionAGV> is deprecated: use opil_v2-msg:RobotDescriptionAGV instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:header-val is deprecated.  Use opil_v2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_id-val :lambda-list '(m))
(cl:defmethod vehicle_id-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:vehicle_id-val is deprecated.  Use opil_v2-msg:vehicle_id instead.")
  (vehicle_id m))

(cl:ensure-generic-function 'left_size-val :lambda-list '(m))
(cl:defmethod left_size-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:left_size-val is deprecated.  Use opil_v2-msg:left_size instead.")
  (left_size m))

(cl:ensure-generic-function 'right_size-val :lambda-list '(m))
(cl:defmethod right_size-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:right_size-val is deprecated.  Use opil_v2-msg:right_size instead.")
  (right_size m))

(cl:ensure-generic-function 'front_size-val :lambda-list '(m))
(cl:defmethod front_size-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:front_size-val is deprecated.  Use opil_v2-msg:front_size instead.")
  (front_size m))

(cl:ensure-generic-function 'rear_size-val :lambda-list '(m))
(cl:defmethod rear_size-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:rear_size-val is deprecated.  Use opil_v2-msg:rear_size instead.")
  (rear_size m))

(cl:ensure-generic-function 'min_height-val :lambda-list '(m))
(cl:defmethod min_height-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:min_height-val is deprecated.  Use opil_v2-msg:min_height instead.")
  (min_height m))

(cl:ensure-generic-function 'max_height-val :lambda-list '(m))
(cl:defmethod max_height-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_height-val is deprecated.  Use opil_v2-msg:max_height instead.")
  (max_height m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:payload-val is deprecated.  Use opil_v2-msg:payload instead.")
  (payload m))

(cl:ensure-generic-function 'max_pos_x_vel-val :lambda-list '(m))
(cl:defmethod max_pos_x_vel-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_pos_x_vel-val is deprecated.  Use opil_v2-msg:max_pos_x_vel instead.")
  (max_pos_x_vel m))

(cl:ensure-generic-function 'max_neg_x_vel-val :lambda-list '(m))
(cl:defmethod max_neg_x_vel-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_neg_x_vel-val is deprecated.  Use opil_v2-msg:max_neg_x_vel instead.")
  (max_neg_x_vel m))

(cl:ensure-generic-function 'max_pos_x_acc-val :lambda-list '(m))
(cl:defmethod max_pos_x_acc-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_pos_x_acc-val is deprecated.  Use opil_v2-msg:max_pos_x_acc instead.")
  (max_pos_x_acc m))

(cl:ensure-generic-function 'max_neg_x_acc-val :lambda-list '(m))
(cl:defmethod max_neg_x_acc-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_neg_x_acc-val is deprecated.  Use opil_v2-msg:max_neg_x_acc instead.")
  (max_neg_x_acc m))

(cl:ensure-generic-function 'max_pos_y_vel-val :lambda-list '(m))
(cl:defmethod max_pos_y_vel-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_pos_y_vel-val is deprecated.  Use opil_v2-msg:max_pos_y_vel instead.")
  (max_pos_y_vel m))

(cl:ensure-generic-function 'max_neg_y_vel-val :lambda-list '(m))
(cl:defmethod max_neg_y_vel-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_neg_y_vel-val is deprecated.  Use opil_v2-msg:max_neg_y_vel instead.")
  (max_neg_y_vel m))

(cl:ensure-generic-function 'max_pos_y_acc-val :lambda-list '(m))
(cl:defmethod max_pos_y_acc-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_pos_y_acc-val is deprecated.  Use opil_v2-msg:max_pos_y_acc instead.")
  (max_pos_y_acc m))

(cl:ensure-generic-function 'max_neg_y_acc-val :lambda-list '(m))
(cl:defmethod max_neg_y_acc-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_neg_y_acc-val is deprecated.  Use opil_v2-msg:max_neg_y_acc instead.")
  (max_neg_y_acc m))

(cl:ensure-generic-function 'max_pos_ang_vel-val :lambda-list '(m))
(cl:defmethod max_pos_ang_vel-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_pos_ang_vel-val is deprecated.  Use opil_v2-msg:max_pos_ang_vel instead.")
  (max_pos_ang_vel m))

(cl:ensure-generic-function 'max_neg_ang_vel-val :lambda-list '(m))
(cl:defmethod max_neg_ang_vel-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:max_neg_ang_vel-val is deprecated.  Use opil_v2-msg:max_neg_ang_vel instead.")
  (max_neg_ang_vel m))

(cl:ensure-generic-function 'velocity_control_sensitivity-val :lambda-list '(m))
(cl:defmethod velocity_control_sensitivity-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:velocity_control_sensitivity-val is deprecated.  Use opil_v2-msg:velocity_control_sensitivity instead.")
  (velocity_control_sensitivity m))

(cl:ensure-generic-function 'min_turning_radius-val :lambda-list '(m))
(cl:defmethod min_turning_radius-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:min_turning_radius-val is deprecated.  Use opil_v2-msg:min_turning_radius instead.")
  (min_turning_radius m))

(cl:ensure-generic-function 'batt_capacity-val :lambda-list '(m))
(cl:defmethod batt_capacity-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:batt_capacity-val is deprecated.  Use opil_v2-msg:batt_capacity instead.")
  (batt_capacity m))

(cl:ensure-generic-function 'batt_max_voltage-val :lambda-list '(m))
(cl:defmethod batt_max_voltage-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:batt_max_voltage-val is deprecated.  Use opil_v2-msg:batt_max_voltage instead.")
  (batt_max_voltage m))

(cl:ensure-generic-function 'vehicle_type-val :lambda-list '(m))
(cl:defmethod vehicle_type-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:vehicle_type-val is deprecated.  Use opil_v2-msg:vehicle_type instead.")
  (vehicle_type m))

(cl:ensure-generic-function 'vendor-val :lambda-list '(m))
(cl:defmethod vendor-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:vendor-val is deprecated.  Use opil_v2-msg:vendor instead.")
  (vendor m))

(cl:ensure-generic-function 'action_capability-val :lambda-list '(m))
(cl:defmethod action_capability-val ((m <RobotDescriptionAGV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:action_capability-val is deprecated.  Use opil_v2-msg:action_capability instead.")
  (action_capability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotDescriptionAGV>) ostream)
  "Serializes a message object of type '<RobotDescriptionAGV>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_id) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vehicle_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vehicle_type))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotDescriptionAGV>) istream)
  "Deserializes a message object of type '<RobotDescriptionAGV>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_id) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_size) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_size) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_size) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_size) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vehicle_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:setf (cl:aref vals i) (cl:make-instance 'opil_v2-msg:RobotAction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotDescriptionAGV>)))
  "Returns string type for a message object of type '<RobotDescriptionAGV>"
  "opil_v2/RobotDescriptionAGV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotDescriptionAGV)))
  "Returns string type for a message object of type 'RobotDescriptionAGV"
  "opil_v2/RobotDescriptionAGV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotDescriptionAGV>)))
  "Returns md5sum for a message object of type '<RobotDescriptionAGV>"
  "800c3c6d6616acec91eaf106544798b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotDescriptionAGV)))
  "Returns md5sum for a message object of type 'RobotDescriptionAGV"
  "800c3c6d6616acec91eaf106544798b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotDescriptionAGV>)))
  "Returns full string definition for message of type '<RobotDescriptionAGV>"
  (cl:format cl:nil "Header header~%Id vehicle_id~%float32 left_size~%float32 right_size~%float32 front_size~%float32 rear_size~%float32 min_height~%float32 max_height~%float32 payload~%float32 max_pos_x_vel~%float32 max_neg_x_vel~%float32 max_pos_x_acc~%float32 max_neg_x_acc~%float32 max_pos_y_vel~%float32 max_neg_y_vel~%float32 max_pos_y_acc~%float32 max_neg_y_acc~%float32 max_pos_ang_vel~%float32 max_neg_ang_vel~%float32 velocity_control_sensitivity~%float32 min_turning_radius~%float32 batt_capacity~%float32 batt_max_voltage~%string vehicle_type~%string vendor ~%RobotAction[] action_capability~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: opil_v2/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: opil_v2/Tuple~%string type~%string name~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotDescriptionAGV)))
  "Returns full string definition for message of type 'RobotDescriptionAGV"
  (cl:format cl:nil "Header header~%Id vehicle_id~%float32 left_size~%float32 right_size~%float32 front_size~%float32 rear_size~%float32 min_height~%float32 max_height~%float32 payload~%float32 max_pos_x_vel~%float32 max_neg_x_vel~%float32 max_pos_x_acc~%float32 max_neg_x_acc~%float32 max_pos_y_vel~%float32 max_neg_y_vel~%float32 max_pos_y_acc~%float32 max_neg_y_acc~%float32 max_pos_ang_vel~%float32 max_neg_ang_vel~%float32 velocity_control_sensitivity~%float32 min_turning_radius~%float32 batt_capacity~%float32 batt_max_voltage~%string vehicle_type~%string vendor ~%RobotAction[] action_capability~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: opil_v2/RobotAction~%# definition of all the possible actionsmars_agent_physical_robot_msgs~%uint8 CATEGORY_UNDEFINED = 0~%uint8 CATEGORY_NONE = 5~%uint8 CATEGORY_LOAD = 10~%uint8 CATEGORY_MANUAL_LOAD_START = 11~%uint8 CATEGORY_MANUAL_LOAD_DONE = 12~%uint8 CATEGORY_UNLOAD = 20~%uint8 CATEGORY_MANUAL_UNLOAD_START = 21~%uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22~%uint8 CATEGORY_START_CHARGING = 30~%uint8 CATEGORY_STOP_CHARGING = 31~%# ...~%~%~%# Category of the action which has to be performed~%uint8 category~%# Defines the robot specific action which has to be performed. ~%# The specific actions must be defined by manufacturer. ~%uint8 action~%Tuple[] attributes~%# Optional description of the action. E.g.: unload left~%string description~%~%~%================================================================================~%MSG: opil_v2/Tuple~%string type~%string name~%string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotDescriptionAGV>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_id))
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
     4
     4 (cl:length (cl:slot-value msg 'vehicle_type))
     4 (cl:length (cl:slot-value msg 'vendor))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action_capability) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotDescriptionAGV>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotDescriptionAGV
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_id (vehicle_id msg))
    (cl:cons ':left_size (left_size msg))
    (cl:cons ':right_size (right_size msg))
    (cl:cons ':front_size (front_size msg))
    (cl:cons ':rear_size (rear_size msg))
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
    (cl:cons ':velocity_control_sensitivity (velocity_control_sensitivity msg))
    (cl:cons ':min_turning_radius (min_turning_radius msg))
    (cl:cons ':batt_capacity (batt_capacity msg))
    (cl:cons ':batt_max_voltage (batt_max_voltage msg))
    (cl:cons ':vehicle_type (vehicle_type msg))
    (cl:cons ':vendor (vendor msg))
    (cl:cons ':action_capability (action_capability msg))
))
