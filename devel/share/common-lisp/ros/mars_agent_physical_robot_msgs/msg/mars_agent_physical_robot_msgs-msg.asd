
(cl:in-package :asdf)

(defsystem "mars_agent_physical_robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :mars_common_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActionAssignment" :depends-on ("_package_ActionAssignment"))
    (:file "_package_ActionAssignment" :depends-on ("_package"))
    (:file "ActualState" :depends-on ("_package_ActualState"))
    (:file "_package_ActualState" :depends-on ("_package"))
    (:file "AssignmentStatus" :depends-on ("_package_AssignmentStatus"))
    (:file "_package_AssignmentStatus" :depends-on ("_package"))
    (:file "CancelTask" :depends-on ("_package_CancelTask"))
    (:file "_package_CancelTask" :depends-on ("_package"))
    (:file "Error" :depends-on ("_package_Error"))
    (:file "_package_Error" :depends-on ("_package"))
    (:file "Motion" :depends-on ("_package_Motion"))
    (:file "_package_Motion" :depends-on ("_package"))
    (:file "MotionAssignment" :depends-on ("_package_MotionAssignment"))
    (:file "_package_MotionAssignment" :depends-on ("_package"))
    (:file "Position" :depends-on ("_package_Position"))
    (:file "_package_Position" :depends-on ("_package"))
    (:file "RobotAction" :depends-on ("_package_RobotAction"))
    (:file "_package_RobotAction" :depends-on ("_package"))
    (:file "RobotAgentProperties" :depends-on ("_package_RobotAgentProperties"))
    (:file "_package_RobotAgentProperties" :depends-on ("_package"))
    (:file "Sequence" :depends-on ("_package_Sequence"))
    (:file "_package_Sequence" :depends-on ("_package"))
    (:file "VehicleType" :depends-on ("_package_VehicleType"))
    (:file "_package_VehicleType" :depends-on ("_package"))
  ))