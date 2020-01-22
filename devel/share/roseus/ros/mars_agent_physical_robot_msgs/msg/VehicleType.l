;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::VehicleType)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'VehicleType (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::VEHICLETYPE")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::VEHICLETYPE"))

(in-package "ROS")
;;//! \htmlinclude VehicleType.msg.html


(intern "*VEHICLE_TYPE_UNKNOWN*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::VEHICLETYPE"))
(shadow '*VEHICLE_TYPE_UNKNOWN* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::VEHICLETYPE"))
(defconstant mars_agent_physical_robot_msgs::VehicleType::*VEHICLE_TYPE_UNKNOWN* 0)
(intern "*VEHICLE_TYPE_SUPPLY_VEHICLE*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::VEHICLETYPE"))
(shadow '*VEHICLE_TYPE_SUPPLY_VEHICLE* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::VEHICLETYPE"))
(defconstant mars_agent_physical_robot_msgs::VehicleType::*VEHICLE_TYPE_SUPPLY_VEHICLE* 1)
(intern "*VEHICLE_TYPE_ASSEMBLY_VEHICLE*" (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::VEHICLETYPE"))
(shadow '*VEHICLE_TYPE_ASSEMBLY_VEHICLE* (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::VEHICLETYPE"))
(defconstant mars_agent_physical_robot_msgs::VehicleType::*VEHICLE_TYPE_ASSEMBLY_VEHICLE* 2)
(defclass mars_agent_physical_robot_msgs::VehicleType
  :super ros::object
  :slots (_vehicle_type ))

(defmethod mars_agent_physical_robot_msgs::VehicleType
  (:init
   (&key
    ((:vehicle_type __vehicle_type) 0)
    )
   (send-super :init)
   (setq _vehicle_type (round __vehicle_type))
   self)
  (:vehicle_type
   (&optional __vehicle_type)
   (if __vehicle_type (setq _vehicle_type __vehicle_type)) _vehicle_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _vehicle_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _vehicle_type
       (write-byte _vehicle_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _vehicle_type
     (setq _vehicle_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::VehicleType :md5sum-) "d9f648c084537d153d8f0e336521e728")
(setf (get mars_agent_physical_robot_msgs::VehicleType :datatype-) "mars_agent_physical_robot_msgs/VehicleType")
(setf (get mars_agent_physical_robot_msgs::VehicleType :definition-)
      "# supported vehicle_types
uint8 VEHICLE_TYPE_UNKNOWN=0
# TODO:add correct vehicle_types!
uint8 VEHICLE_TYPE_SUPPLY_VEHICLE=1
uint8 VEHICLE_TYPE_ASSEMBLY_VEHICLE=2

# type of the vehicle
uint8 vehicle_type

")



(provide :mars_agent_physical_robot_msgs/VehicleType "d9f648c084537d153d8f0e336521e728")


