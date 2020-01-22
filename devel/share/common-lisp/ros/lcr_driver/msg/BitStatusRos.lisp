; Auto-generated. Do not edit!


(cl:in-package lcr_driver-msg)


;//! \htmlinclude BitStatusRos.msg.html

(cl:defclass <BitStatusRos> (roslisp-msg-protocol:ros-message)
  ((st_Ros_BumpFront
    :reader st_Ros_BumpFront
    :initarg :st_Ros_BumpFront
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_BumpRear
    :reader st_Ros_BumpRear
    :initarg :st_Ros_BumpRear
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_FallFront
    :reader st_Ros_FallFront
    :initarg :st_Ros_FallFront
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_FallRear
    :reader st_Ros_FallRear
    :initarg :st_Ros_FallRear
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_Emergenza
    :reader st_Ros_Emergenza
    :initarg :st_Ros_Emergenza
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_ErrInt1
    :reader st_Ros_ErrInt1
    :initarg :st_Ros_ErrInt1
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_ErrInt2
    :reader st_Ros_ErrInt2
    :initarg :st_Ros_ErrInt2
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_Mot_DX_Fail
    :reader st_Ros_Mot_DX_Fail
    :initarg :st_Ros_Mot_DX_Fail
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_Mot_SX_Fail
    :reader st_Ros_Mot_SX_Fail
    :initarg :st_Ros_Mot_SX_Fail
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_Recharge_Found
    :reader st_Ros_Recharge_Found
    :initarg :st_Ros_Recharge_Found
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_Recharge_On
    :reader st_Ros_Recharge_On
    :initarg :st_Ros_Recharge_On
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_Recharge_Ok
    :reader st_Ros_Recharge_Ok
    :initarg :st_Ros_Recharge_Ok
    :type cl:boolean
    :initform cl:nil)
   (st_Ros_BatteryFail
    :reader st_Ros_BatteryFail
    :initarg :st_Ros_BatteryFail
    :type cl:boolean
    :initform cl:nil)
   (NofBitStatusRos
    :reader NofBitStatusRos
    :initarg :NofBitStatusRos
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BitStatusRos (<BitStatusRos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BitStatusRos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BitStatusRos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_driver-msg:<BitStatusRos> is deprecated: use lcr_driver-msg:BitStatusRos instead.")))

(cl:ensure-generic-function 'st_Ros_BumpFront-val :lambda-list '(m))
(cl:defmethod st_Ros_BumpFront-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_BumpFront-val is deprecated.  Use lcr_driver-msg:st_Ros_BumpFront instead.")
  (st_Ros_BumpFront m))

(cl:ensure-generic-function 'st_Ros_BumpRear-val :lambda-list '(m))
(cl:defmethod st_Ros_BumpRear-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_BumpRear-val is deprecated.  Use lcr_driver-msg:st_Ros_BumpRear instead.")
  (st_Ros_BumpRear m))

(cl:ensure-generic-function 'st_Ros_FallFront-val :lambda-list '(m))
(cl:defmethod st_Ros_FallFront-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_FallFront-val is deprecated.  Use lcr_driver-msg:st_Ros_FallFront instead.")
  (st_Ros_FallFront m))

(cl:ensure-generic-function 'st_Ros_FallRear-val :lambda-list '(m))
(cl:defmethod st_Ros_FallRear-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_FallRear-val is deprecated.  Use lcr_driver-msg:st_Ros_FallRear instead.")
  (st_Ros_FallRear m))

(cl:ensure-generic-function 'st_Ros_Emergenza-val :lambda-list '(m))
(cl:defmethod st_Ros_Emergenza-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_Emergenza-val is deprecated.  Use lcr_driver-msg:st_Ros_Emergenza instead.")
  (st_Ros_Emergenza m))

(cl:ensure-generic-function 'st_Ros_ErrInt1-val :lambda-list '(m))
(cl:defmethod st_Ros_ErrInt1-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_ErrInt1-val is deprecated.  Use lcr_driver-msg:st_Ros_ErrInt1 instead.")
  (st_Ros_ErrInt1 m))

(cl:ensure-generic-function 'st_Ros_ErrInt2-val :lambda-list '(m))
(cl:defmethod st_Ros_ErrInt2-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_ErrInt2-val is deprecated.  Use lcr_driver-msg:st_Ros_ErrInt2 instead.")
  (st_Ros_ErrInt2 m))

(cl:ensure-generic-function 'st_Ros_Mot_DX_Fail-val :lambda-list '(m))
(cl:defmethod st_Ros_Mot_DX_Fail-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_Mot_DX_Fail-val is deprecated.  Use lcr_driver-msg:st_Ros_Mot_DX_Fail instead.")
  (st_Ros_Mot_DX_Fail m))

(cl:ensure-generic-function 'st_Ros_Mot_SX_Fail-val :lambda-list '(m))
(cl:defmethod st_Ros_Mot_SX_Fail-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_Mot_SX_Fail-val is deprecated.  Use lcr_driver-msg:st_Ros_Mot_SX_Fail instead.")
  (st_Ros_Mot_SX_Fail m))

(cl:ensure-generic-function 'st_Ros_Recharge_Found-val :lambda-list '(m))
(cl:defmethod st_Ros_Recharge_Found-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_Recharge_Found-val is deprecated.  Use lcr_driver-msg:st_Ros_Recharge_Found instead.")
  (st_Ros_Recharge_Found m))

(cl:ensure-generic-function 'st_Ros_Recharge_On-val :lambda-list '(m))
(cl:defmethod st_Ros_Recharge_On-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_Recharge_On-val is deprecated.  Use lcr_driver-msg:st_Ros_Recharge_On instead.")
  (st_Ros_Recharge_On m))

(cl:ensure-generic-function 'st_Ros_Recharge_Ok-val :lambda-list '(m))
(cl:defmethod st_Ros_Recharge_Ok-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_Recharge_Ok-val is deprecated.  Use lcr_driver-msg:st_Ros_Recharge_Ok instead.")
  (st_Ros_Recharge_Ok m))

(cl:ensure-generic-function 'st_Ros_BatteryFail-val :lambda-list '(m))
(cl:defmethod st_Ros_BatteryFail-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:st_Ros_BatteryFail-val is deprecated.  Use lcr_driver-msg:st_Ros_BatteryFail instead.")
  (st_Ros_BatteryFail m))

(cl:ensure-generic-function 'NofBitStatusRos-val :lambda-list '(m))
(cl:defmethod NofBitStatusRos-val ((m <BitStatusRos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_driver-msg:NofBitStatusRos-val is deprecated.  Use lcr_driver-msg:NofBitStatusRos instead.")
  (NofBitStatusRos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BitStatusRos>) ostream)
  "Serializes a message object of type '<BitStatusRos>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_BumpFront) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_BumpRear) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_FallFront) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_FallRear) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_Emergenza) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_ErrInt1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_ErrInt2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_Mot_DX_Fail) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_Mot_SX_Fail) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_Recharge_Found) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_Recharge_On) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_Recharge_Ok) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'st_Ros_BatteryFail) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'NofBitStatusRos) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BitStatusRos>) istream)
  "Deserializes a message object of type '<BitStatusRos>"
    (cl:setf (cl:slot-value msg 'st_Ros_BumpFront) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_BumpRear) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_FallFront) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_FallRear) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_Emergenza) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_ErrInt1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_ErrInt2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_Mot_DX_Fail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_Mot_SX_Fail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_Recharge_Found) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_Recharge_On) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_Recharge_Ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'st_Ros_BatteryFail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'NofBitStatusRos) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BitStatusRos>)))
  "Returns string type for a message object of type '<BitStatusRos>"
  "lcr_driver/BitStatusRos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BitStatusRos)))
  "Returns string type for a message object of type 'BitStatusRos"
  "lcr_driver/BitStatusRos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BitStatusRos>)))
  "Returns md5sum for a message object of type '<BitStatusRos>"
  "2253552a57ac1bef3af9f6d07aaff730")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BitStatusRos)))
  "Returns md5sum for a message object of type 'BitStatusRos"
  "2253552a57ac1bef3af9f6d07aaff730")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BitStatusRos>)))
  "Returns full string definition for message of type '<BitStatusRos>"
  (cl:format cl:nil "bool st_Ros_BumpFront~%bool st_Ros_BumpRear~%bool st_Ros_FallFront~%bool st_Ros_FallRear~%bool st_Ros_Emergenza~%bool st_Ros_ErrInt1~%bool st_Ros_ErrInt2~%bool st_Ros_Mot_DX_Fail~%bool st_Ros_Mot_SX_Fail~%bool st_Ros_Recharge_Found~%bool st_Ros_Recharge_On~%bool st_Ros_Recharge_Ok~%bool st_Ros_BatteryFail~%bool NofBitStatusRos~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BitStatusRos)))
  "Returns full string definition for message of type 'BitStatusRos"
  (cl:format cl:nil "bool st_Ros_BumpFront~%bool st_Ros_BumpRear~%bool st_Ros_FallFront~%bool st_Ros_FallRear~%bool st_Ros_Emergenza~%bool st_Ros_ErrInt1~%bool st_Ros_ErrInt2~%bool st_Ros_Mot_DX_Fail~%bool st_Ros_Mot_SX_Fail~%bool st_Ros_Recharge_Found~%bool st_Ros_Recharge_On~%bool st_Ros_Recharge_Ok~%bool st_Ros_BatteryFail~%bool NofBitStatusRos~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BitStatusRos>))
  (cl:+ 0
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
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BitStatusRos>))
  "Converts a ROS message object to a list"
  (cl:list 'BitStatusRos
    (cl:cons ':st_Ros_BumpFront (st_Ros_BumpFront msg))
    (cl:cons ':st_Ros_BumpRear (st_Ros_BumpRear msg))
    (cl:cons ':st_Ros_FallFront (st_Ros_FallFront msg))
    (cl:cons ':st_Ros_FallRear (st_Ros_FallRear msg))
    (cl:cons ':st_Ros_Emergenza (st_Ros_Emergenza msg))
    (cl:cons ':st_Ros_ErrInt1 (st_Ros_ErrInt1 msg))
    (cl:cons ':st_Ros_ErrInt2 (st_Ros_ErrInt2 msg))
    (cl:cons ':st_Ros_Mot_DX_Fail (st_Ros_Mot_DX_Fail msg))
    (cl:cons ':st_Ros_Mot_SX_Fail (st_Ros_Mot_SX_Fail msg))
    (cl:cons ':st_Ros_Recharge_Found (st_Ros_Recharge_Found msg))
    (cl:cons ':st_Ros_Recharge_On (st_Ros_Recharge_On msg))
    (cl:cons ':st_Ros_Recharge_Ok (st_Ros_Recharge_Ok msg))
    (cl:cons ':st_Ros_BatteryFail (st_Ros_BatteryFail msg))
    (cl:cons ':NofBitStatusRos (NofBitStatusRos msg))
))
