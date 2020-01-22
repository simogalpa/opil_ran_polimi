; Auto-generated. Do not edit!


(cl:in-package mars_agent_physical_robot_msgs-msg)


;//! \htmlinclude VehicleType.msg.html

(cl:defclass <VehicleType> (roslisp-msg-protocol:ros-message)
  ((vehicle_type
    :reader vehicle_type
    :initarg :vehicle_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleType (<VehicleType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mars_agent_physical_robot_msgs-msg:<VehicleType> is deprecated: use mars_agent_physical_robot_msgs-msg:VehicleType instead.")))

(cl:ensure-generic-function 'vehicle_type-val :lambda-list '(m))
(cl:defmethod vehicle_type-val ((m <VehicleType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_agent_physical_robot_msgs-msg:vehicle_type-val is deprecated.  Use mars_agent_physical_robot_msgs-msg:vehicle_type instead.")
  (vehicle_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleType>)))
    "Constants for message type '<VehicleType>"
  '((:VEHICLE_TYPE_UNKNOWN . 0)
    (:VEHICLE_TYPE_SUPPLY_VEHICLE . 1)
    (:VEHICLE_TYPE_ASSEMBLY_VEHICLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleType)))
    "Constants for message type 'VehicleType"
  '((:VEHICLE_TYPE_UNKNOWN . 0)
    (:VEHICLE_TYPE_SUPPLY_VEHICLE . 1)
    (:VEHICLE_TYPE_ASSEMBLY_VEHICLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleType>) ostream)
  "Serializes a message object of type '<VehicleType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleType>) istream)
  "Deserializes a message object of type '<VehicleType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleType>)))
  "Returns string type for a message object of type '<VehicleType>"
  "mars_agent_physical_robot_msgs/VehicleType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleType)))
  "Returns string type for a message object of type 'VehicleType"
  "mars_agent_physical_robot_msgs/VehicleType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleType>)))
  "Returns md5sum for a message object of type '<VehicleType>"
  "d9f648c084537d153d8f0e336521e728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleType)))
  "Returns md5sum for a message object of type 'VehicleType"
  "d9f648c084537d153d8f0e336521e728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleType>)))
  "Returns full string definition for message of type '<VehicleType>"
  (cl:format cl:nil "# supported vehicle_types~%uint8 VEHICLE_TYPE_UNKNOWN=0~%# TODO:add correct vehicle_types!~%uint8 VEHICLE_TYPE_SUPPLY_VEHICLE=1~%uint8 VEHICLE_TYPE_ASSEMBLY_VEHICLE=2~%~%# type of the vehicle~%uint8 vehicle_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleType)))
  "Returns full string definition for message of type 'VehicleType"
  (cl:format cl:nil "# supported vehicle_types~%uint8 VEHICLE_TYPE_UNKNOWN=0~%# TODO:add correct vehicle_types!~%uint8 VEHICLE_TYPE_SUPPLY_VEHICLE=1~%uint8 VEHICLE_TYPE_ASSEMBLY_VEHICLE=2~%~%# type of the vehicle~%uint8 vehicle_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleType>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleType
    (cl:cons ':vehicle_type (vehicle_type msg))
))
