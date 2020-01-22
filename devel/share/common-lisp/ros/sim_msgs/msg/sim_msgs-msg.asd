
(cl:in-package :asdf)

(defsystem "sim_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :industrial_msgs-msg
               :mars_agent_physical_robot_msgs-msg
               :mars_common_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AssignmentId" :depends-on ("_package_AssignmentId"))
    (:file "_package_AssignmentId" :depends-on ("_package"))
    (:file "ErrorAGV" :depends-on ("_package_ErrorAGV"))
    (:file "_package_ErrorAGV" :depends-on ("_package"))
    (:file "RobotDescriptionAGV" :depends-on ("_package_RobotDescriptionAGV"))
    (:file "_package_RobotDescriptionAGV" :depends-on ("_package"))
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
  ))