
(cl:in-package :asdf)

(defsystem "lcr_shared-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :lcr_shared-msg
)
  :components ((:file "_package")
    (:file "Elevator" :depends-on ("_package_Elevator"))
    (:file "_package_Elevator" :depends-on ("_package"))
    (:file "SetInt32" :depends-on ("_package_SetInt32"))
    (:file "_package_SetInt32" :depends-on ("_package"))
    (:file "SetPose" :depends-on ("_package_SetPose"))
    (:file "_package_SetPose" :depends-on ("_package"))
    (:file "SetString" :depends-on ("_package_SetString"))
    (:file "_package_SetString" :depends-on ("_package"))
    (:file "SetTwist" :depends-on ("_package_SetTwist"))
    (:file "_package_SetTwist" :depends-on ("_package"))
    (:file "database" :depends-on ("_package_database"))
    (:file "_package_database" :depends-on ("_package"))
  ))