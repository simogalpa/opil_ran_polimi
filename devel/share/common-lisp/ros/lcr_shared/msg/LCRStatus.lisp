; Auto-generated. Do not edit!


(cl:in-package lcr_shared-msg)


;//! \htmlinclude LCRStatus.msg.html

(cl:defclass <LCRStatus> (roslisp-msg-protocol:ros-message)
  ((virtual_object_version_id
    :reader virtual_object_version_id
    :initarg :virtual_object_version_id
    :type cl:integer
    :initform 0)
   (mission_id
    :reader mission_id
    :initarg :mission_id
    :type cl:string
    :initform "")
   (wcs_adapter_ros_header
    :reader wcs_adapter_ros_header
    :initarg :wcs_adapter_ros_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (tag_seen
    :reader tag_seen
    :initarg :tag_seen
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (navigation_header
    :reader navigation_header
    :initarg :navigation_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (error_type
    :reader error_type
    :initarg :error_type
    :type cl:fixnum
    :initform 0)
   (error_id
    :reader error_id
    :initarg :error_id
    :type cl:string
    :initform "")
   (error_header
    :reader error_header
    :initarg :error_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (emergenza
    :reader emergenza
    :initarg :emergenza
    :type cl:boolean
    :initform cl:nil)
   (bump_front
    :reader bump_front
    :initarg :bump_front
    :type cl:boolean
    :initform cl:nil)
   (bump_rear
    :reader bump_rear
    :initarg :bump_rear
    :type cl:boolean
    :initform cl:nil)
   (fall_front
    :reader fall_front
    :initarg :fall_front
    :type cl:boolean
    :initform cl:nil)
   (fall_rear
    :reader fall_rear
    :initarg :fall_rear
    :type cl:boolean
    :initform cl:nil)
   (motore_dx_fail
    :reader motore_dx_fail
    :initarg :motore_dx_fail
    :type cl:boolean
    :initform cl:nil)
   (motore_sx_fail
    :reader motore_sx_fail
    :initarg :motore_sx_fail
    :type cl:boolean
    :initform cl:nil)
   (errore_int_1
    :reader errore_int_1
    :initarg :errore_int_1
    :type cl:boolean
    :initform cl:nil)
   (errore_int_2
    :reader errore_int_2
    :initarg :errore_int_2
    :type cl:boolean
    :initform cl:nil)
   (battery_fail
    :reader battery_fail
    :initarg :battery_fail
    :type cl:boolean
    :initform cl:nil)
   (battery_power
    :reader battery_power
    :initarg :battery_power
    :type cl:integer
    :initform 0)
   (recharge_found
    :reader recharge_found
    :initarg :recharge_found
    :type cl:boolean
    :initform cl:nil)
   (recharge_on
    :reader recharge_on
    :initarg :recharge_on
    :type cl:boolean
    :initform cl:nil)
   (recharge_ok
    :reader recharge_ok
    :initarg :recharge_ok
    :type cl:boolean
    :initform cl:nil)
   (hardware_status_header
    :reader hardware_status_header
    :initarg :hardware_status_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (serial_ok
    :reader serial_ok
    :initarg :serial_ok
    :type cl:boolean
    :initform cl:nil)
   (serial_info
    :reader serial_info
    :initarg :serial_info
    :type cl:fixnum
    :initform 0)
   (serial_header
    :reader serial_header
    :initarg :serial_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (laser_ok
    :reader laser_ok
    :initarg :laser_ok
    :type cl:boolean
    :initform cl:nil)
   (laser_info
    :reader laser_info
    :initarg :laser_info
    :type cl:fixnum
    :initform 0)
   (laser_header
    :reader laser_header
    :initarg :laser_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (planner_status
    :reader planner_status
    :initarg :planner_status
    :type cl:string
    :initform "")
   (planner_info
    :reader planner_info
    :initarg :planner_info
    :type cl:fixnum
    :initform 0)
   (controller_status
    :reader controller_status
    :initarg :controller_status
    :type cl:string
    :initform "")
   (nextNode
    :reader nextNode
    :initarg :nextNode
    :type cl:integer
    :initform 0))
)

(cl:defclass LCRStatus (<LCRStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LCRStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LCRStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-msg:<LCRStatus> is deprecated: use lcr_shared-msg:LCRStatus instead.")))

(cl:ensure-generic-function 'virtual_object_version_id-val :lambda-list '(m))
(cl:defmethod virtual_object_version_id-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:virtual_object_version_id-val is deprecated.  Use lcr_shared-msg:virtual_object_version_id instead.")
  (virtual_object_version_id m))

(cl:ensure-generic-function 'mission_id-val :lambda-list '(m))
(cl:defmethod mission_id-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:mission_id-val is deprecated.  Use lcr_shared-msg:mission_id instead.")
  (mission_id m))

(cl:ensure-generic-function 'wcs_adapter_ros_header-val :lambda-list '(m))
(cl:defmethod wcs_adapter_ros_header-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:wcs_adapter_ros_header-val is deprecated.  Use lcr_shared-msg:wcs_adapter_ros_header instead.")
  (wcs_adapter_ros_header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:status-val is deprecated.  Use lcr_shared-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'tag_seen-val :lambda-list '(m))
(cl:defmethod tag_seen-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:tag_seen-val is deprecated.  Use lcr_shared-msg:tag_seen instead.")
  (tag_seen m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:position-val is deprecated.  Use lcr_shared-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:yaw-val is deprecated.  Use lcr_shared-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'navigation_header-val :lambda-list '(m))
(cl:defmethod navigation_header-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:navigation_header-val is deprecated.  Use lcr_shared-msg:navigation_header instead.")
  (navigation_header m))

(cl:ensure-generic-function 'error_type-val :lambda-list '(m))
(cl:defmethod error_type-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:error_type-val is deprecated.  Use lcr_shared-msg:error_type instead.")
  (error_type m))

(cl:ensure-generic-function 'error_id-val :lambda-list '(m))
(cl:defmethod error_id-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:error_id-val is deprecated.  Use lcr_shared-msg:error_id instead.")
  (error_id m))

(cl:ensure-generic-function 'error_header-val :lambda-list '(m))
(cl:defmethod error_header-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:error_header-val is deprecated.  Use lcr_shared-msg:error_header instead.")
  (error_header m))

(cl:ensure-generic-function 'emergenza-val :lambda-list '(m))
(cl:defmethod emergenza-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:emergenza-val is deprecated.  Use lcr_shared-msg:emergenza instead.")
  (emergenza m))

(cl:ensure-generic-function 'bump_front-val :lambda-list '(m))
(cl:defmethod bump_front-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:bump_front-val is deprecated.  Use lcr_shared-msg:bump_front instead.")
  (bump_front m))

(cl:ensure-generic-function 'bump_rear-val :lambda-list '(m))
(cl:defmethod bump_rear-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:bump_rear-val is deprecated.  Use lcr_shared-msg:bump_rear instead.")
  (bump_rear m))

(cl:ensure-generic-function 'fall_front-val :lambda-list '(m))
(cl:defmethod fall_front-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:fall_front-val is deprecated.  Use lcr_shared-msg:fall_front instead.")
  (fall_front m))

(cl:ensure-generic-function 'fall_rear-val :lambda-list '(m))
(cl:defmethod fall_rear-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:fall_rear-val is deprecated.  Use lcr_shared-msg:fall_rear instead.")
  (fall_rear m))

(cl:ensure-generic-function 'motore_dx_fail-val :lambda-list '(m))
(cl:defmethod motore_dx_fail-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:motore_dx_fail-val is deprecated.  Use lcr_shared-msg:motore_dx_fail instead.")
  (motore_dx_fail m))

(cl:ensure-generic-function 'motore_sx_fail-val :lambda-list '(m))
(cl:defmethod motore_sx_fail-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:motore_sx_fail-val is deprecated.  Use lcr_shared-msg:motore_sx_fail instead.")
  (motore_sx_fail m))

(cl:ensure-generic-function 'errore_int_1-val :lambda-list '(m))
(cl:defmethod errore_int_1-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:errore_int_1-val is deprecated.  Use lcr_shared-msg:errore_int_1 instead.")
  (errore_int_1 m))

(cl:ensure-generic-function 'errore_int_2-val :lambda-list '(m))
(cl:defmethod errore_int_2-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:errore_int_2-val is deprecated.  Use lcr_shared-msg:errore_int_2 instead.")
  (errore_int_2 m))

(cl:ensure-generic-function 'battery_fail-val :lambda-list '(m))
(cl:defmethod battery_fail-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:battery_fail-val is deprecated.  Use lcr_shared-msg:battery_fail instead.")
  (battery_fail m))

(cl:ensure-generic-function 'battery_power-val :lambda-list '(m))
(cl:defmethod battery_power-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:battery_power-val is deprecated.  Use lcr_shared-msg:battery_power instead.")
  (battery_power m))

(cl:ensure-generic-function 'recharge_found-val :lambda-list '(m))
(cl:defmethod recharge_found-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:recharge_found-val is deprecated.  Use lcr_shared-msg:recharge_found instead.")
  (recharge_found m))

(cl:ensure-generic-function 'recharge_on-val :lambda-list '(m))
(cl:defmethod recharge_on-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:recharge_on-val is deprecated.  Use lcr_shared-msg:recharge_on instead.")
  (recharge_on m))

(cl:ensure-generic-function 'recharge_ok-val :lambda-list '(m))
(cl:defmethod recharge_ok-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:recharge_ok-val is deprecated.  Use lcr_shared-msg:recharge_ok instead.")
  (recharge_ok m))

(cl:ensure-generic-function 'hardware_status_header-val :lambda-list '(m))
(cl:defmethod hardware_status_header-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:hardware_status_header-val is deprecated.  Use lcr_shared-msg:hardware_status_header instead.")
  (hardware_status_header m))

(cl:ensure-generic-function 'serial_ok-val :lambda-list '(m))
(cl:defmethod serial_ok-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:serial_ok-val is deprecated.  Use lcr_shared-msg:serial_ok instead.")
  (serial_ok m))

(cl:ensure-generic-function 'serial_info-val :lambda-list '(m))
(cl:defmethod serial_info-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:serial_info-val is deprecated.  Use lcr_shared-msg:serial_info instead.")
  (serial_info m))

(cl:ensure-generic-function 'serial_header-val :lambda-list '(m))
(cl:defmethod serial_header-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:serial_header-val is deprecated.  Use lcr_shared-msg:serial_header instead.")
  (serial_header m))

(cl:ensure-generic-function 'laser_ok-val :lambda-list '(m))
(cl:defmethod laser_ok-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:laser_ok-val is deprecated.  Use lcr_shared-msg:laser_ok instead.")
  (laser_ok m))

(cl:ensure-generic-function 'laser_info-val :lambda-list '(m))
(cl:defmethod laser_info-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:laser_info-val is deprecated.  Use lcr_shared-msg:laser_info instead.")
  (laser_info m))

(cl:ensure-generic-function 'laser_header-val :lambda-list '(m))
(cl:defmethod laser_header-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:laser_header-val is deprecated.  Use lcr_shared-msg:laser_header instead.")
  (laser_header m))

(cl:ensure-generic-function 'planner_status-val :lambda-list '(m))
(cl:defmethod planner_status-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:planner_status-val is deprecated.  Use lcr_shared-msg:planner_status instead.")
  (planner_status m))

(cl:ensure-generic-function 'planner_info-val :lambda-list '(m))
(cl:defmethod planner_info-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:planner_info-val is deprecated.  Use lcr_shared-msg:planner_info instead.")
  (planner_info m))

(cl:ensure-generic-function 'controller_status-val :lambda-list '(m))
(cl:defmethod controller_status-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:controller_status-val is deprecated.  Use lcr_shared-msg:controller_status instead.")
  (controller_status m))

(cl:ensure-generic-function 'nextNode-val :lambda-list '(m))
(cl:defmethod nextNode-val ((m <LCRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:nextNode-val is deprecated.  Use lcr_shared-msg:nextNode instead.")
  (nextNode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LCRStatus>)))
    "Constants for message type '<LCRStatus>"
  '((:SHUTDOWN . 0)
    (:POWERED . 1)
    (:SYNCHRONIZING . 2)
    (:LOCALIZING . 3)
    (:RUN . 4)
    (:LOST . 5)
    (:CHARGING . 6)
    (:LOCALIZATION_REQUIRED . 7)
    (:ECO . 8)
    (:STATUS_SIZE . 9)
    (:RUNNING . 0)
    (:RESTART . 1)
    (:STOPPED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LCRStatus)))
    "Constants for message type 'LCRStatus"
  '((:SHUTDOWN . 0)
    (:POWERED . 1)
    (:SYNCHRONIZING . 2)
    (:LOCALIZING . 3)
    (:RUN . 4)
    (:LOST . 5)
    (:CHARGING . 6)
    (:LOCALIZATION_REQUIRED . 7)
    (:ECO . 8)
    (:STATUS_SIZE . 9)
    (:RUNNING . 0)
    (:RESTART . 1)
    (:STOPPED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LCRStatus>) ostream)
  "Serializes a message object of type '<LCRStatus>"
  (cl:let* ((signed (cl:slot-value msg 'virtual_object_version_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mission_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mission_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wcs_adapter_ros_header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tag_seen)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navigation_header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergenza) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bump_front) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bump_rear) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fall_front) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fall_rear) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motore_dx_fail) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motore_sx_fail) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'errore_int_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'errore_int_2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'battery_fail) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'battery_power)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recharge_found) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recharge_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recharge_ok) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hardware_status_header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'serial_ok) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'serial_info)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'serial_header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'laser_ok) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'laser_info)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'laser_header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planner_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planner_status))
  (cl:let* ((signed (cl:slot-value msg 'planner_info)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'controller_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'controller_status))
  (cl:let* ((signed (cl:slot-value msg 'nextNode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LCRStatus>) istream)
  "Deserializes a message object of type '<LCRStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'virtual_object_version_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wcs_adapter_ros_header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_seen) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navigation_header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_header) istream)
    (cl:setf (cl:slot-value msg 'emergenza) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bump_front) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bump_rear) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fall_front) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fall_rear) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motore_dx_fail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motore_sx_fail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'errore_int_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'errore_int_2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'battery_fail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_power) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'recharge_found) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'recharge_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'recharge_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hardware_status_header) istream)
    (cl:setf (cl:slot-value msg 'serial_ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_info) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'serial_header) istream)
    (cl:setf (cl:slot-value msg 'laser_ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laser_info) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'laser_header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planner_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner_info) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controller_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'controller_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nextNode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LCRStatus>)))
  "Returns string type for a message object of type '<LCRStatus>"
  "lcr_shared/LCRStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LCRStatus)))
  "Returns string type for a message object of type 'LCRStatus"
  "lcr_shared/LCRStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LCRStatus>)))
  "Returns md5sum for a message object of type '<LCRStatus>"
  "a0b17cfb00f69212db580b1be903bfd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LCRStatus)))
  "Returns md5sum for a message object of type 'LCRStatus"
  "a0b17cfb00f69212db580b1be903bfd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LCRStatus>)))
  "Returns full string definition for message of type '<LCRStatus>"
  (cl:format cl:nil "int32 virtual_object_version_id~%string mission_id~%Header wcs_adapter_ros_header~%~%#Possibili valori di status ~%int8 SHUTDOWN = 0 #robot in fase di arresto o riavvio~%int8 POWERED = 1  #tasto power premuto~%int8 SYNCHRONIZING = 2 #arrivata richiesta di sincronizzazione~%int8 LOCALIZING = 3 #in fase di setup. Il tasto run è premuto ma il robot non è stato ancora localizzato.~%int8 RUN = 4 #robot localizzato e funzionante, il comando del robot è in carico alla GUI Onit.~%int8 LOST = 5 #robot perso~%int8 CHARGING = 6 #robot in fase di ricarica~%int8 LOCALIZATION_REQUIRED = 7 #il robot deve essere localizzato con un tag~%int8 ECO = 8 #modalità eco attiva~%int8 STATUS_SIZE = 9 #delimiter of status size~%~%# informazioni aggiuntive per il WCS adapter: *_info~%int8 RUNNING = 0~%int8 RESTART = 1~%int8 STOPPED = 2~%~%int8 status~%int32 tag_seen # -1 , nessun tag visto, altrimenti id tag~%geometry_msgs/Pose position~%float64 yaw~%Header navigation_header~%~%int8 error_type #0 no error~%string error_id~%Header error_header~%~%bool emergenza #bottone premuto~%bool bump_front~%bool bump_rear~%bool fall_front~%bool fall_rear~%bool motore_dx_fail #surriscaldamento o corto~%bool motore_sx_fail #surriscaldamento o corto~%bool errore_int_1 #errore elettronico irrecuperabile~%bool errore_int_2 #errore elettronico irrecuperabile~%bool battery_fail #tensione di batteria troppo bassa~%int32 battery_power #percentuale~%bool recharge_found~%bool recharge_on~%bool recharge_ok~%Header hardware_status_header~%~%bool serial_ok~%int8 serial_info~%Header serial_header~%~%bool laser_ok~%int8 laser_info~%Header laser_header~%~%string planner_status~%int8 planner_info~%~%string controller_status~%int32 nextNode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LCRStatus)))
  "Returns full string definition for message of type 'LCRStatus"
  (cl:format cl:nil "int32 virtual_object_version_id~%string mission_id~%Header wcs_adapter_ros_header~%~%#Possibili valori di status ~%int8 SHUTDOWN = 0 #robot in fase di arresto o riavvio~%int8 POWERED = 1  #tasto power premuto~%int8 SYNCHRONIZING = 2 #arrivata richiesta di sincronizzazione~%int8 LOCALIZING = 3 #in fase di setup. Il tasto run è premuto ma il robot non è stato ancora localizzato.~%int8 RUN = 4 #robot localizzato e funzionante, il comando del robot è in carico alla GUI Onit.~%int8 LOST = 5 #robot perso~%int8 CHARGING = 6 #robot in fase di ricarica~%int8 LOCALIZATION_REQUIRED = 7 #il robot deve essere localizzato con un tag~%int8 ECO = 8 #modalità eco attiva~%int8 STATUS_SIZE = 9 #delimiter of status size~%~%# informazioni aggiuntive per il WCS adapter: *_info~%int8 RUNNING = 0~%int8 RESTART = 1~%int8 STOPPED = 2~%~%int8 status~%int32 tag_seen # -1 , nessun tag visto, altrimenti id tag~%geometry_msgs/Pose position~%float64 yaw~%Header navigation_header~%~%int8 error_type #0 no error~%string error_id~%Header error_header~%~%bool emergenza #bottone premuto~%bool bump_front~%bool bump_rear~%bool fall_front~%bool fall_rear~%bool motore_dx_fail #surriscaldamento o corto~%bool motore_sx_fail #surriscaldamento o corto~%bool errore_int_1 #errore elettronico irrecuperabile~%bool errore_int_2 #errore elettronico irrecuperabile~%bool battery_fail #tensione di batteria troppo bassa~%int32 battery_power #percentuale~%bool recharge_found~%bool recharge_on~%bool recharge_ok~%Header hardware_status_header~%~%bool serial_ok~%int8 serial_info~%Header serial_header~%~%bool laser_ok~%int8 laser_info~%Header laser_header~%~%string planner_status~%int8 planner_info~%~%string controller_status~%int32 nextNode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LCRStatus>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'mission_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wcs_adapter_ros_header))
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navigation_header))
     1
     4 (cl:length (cl:slot-value msg 'error_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hardware_status_header))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'serial_header))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'laser_header))
     4 (cl:length (cl:slot-value msg 'planner_status))
     1
     4 (cl:length (cl:slot-value msg 'controller_status))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LCRStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LCRStatus
    (cl:cons ':virtual_object_version_id (virtual_object_version_id msg))
    (cl:cons ':mission_id (mission_id msg))
    (cl:cons ':wcs_adapter_ros_header (wcs_adapter_ros_header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':tag_seen (tag_seen msg))
    (cl:cons ':position (position msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':navigation_header (navigation_header msg))
    (cl:cons ':error_type (error_type msg))
    (cl:cons ':error_id (error_id msg))
    (cl:cons ':error_header (error_header msg))
    (cl:cons ':emergenza (emergenza msg))
    (cl:cons ':bump_front (bump_front msg))
    (cl:cons ':bump_rear (bump_rear msg))
    (cl:cons ':fall_front (fall_front msg))
    (cl:cons ':fall_rear (fall_rear msg))
    (cl:cons ':motore_dx_fail (motore_dx_fail msg))
    (cl:cons ':motore_sx_fail (motore_sx_fail msg))
    (cl:cons ':errore_int_1 (errore_int_1 msg))
    (cl:cons ':errore_int_2 (errore_int_2 msg))
    (cl:cons ':battery_fail (battery_fail msg))
    (cl:cons ':battery_power (battery_power msg))
    (cl:cons ':recharge_found (recharge_found msg))
    (cl:cons ':recharge_on (recharge_on msg))
    (cl:cons ':recharge_ok (recharge_ok msg))
    (cl:cons ':hardware_status_header (hardware_status_header msg))
    (cl:cons ':serial_ok (serial_ok msg))
    (cl:cons ':serial_info (serial_info msg))
    (cl:cons ':serial_header (serial_header msg))
    (cl:cons ':laser_ok (laser_ok msg))
    (cl:cons ':laser_info (laser_info msg))
    (cl:cons ':laser_header (laser_header msg))
    (cl:cons ':planner_status (planner_status msg))
    (cl:cons ':planner_info (planner_info msg))
    (cl:cons ':controller_status (controller_status msg))
    (cl:cons ':nextNode (nextNode msg))
))
