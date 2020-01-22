
(cl:in-package :asdf)

(defsystem "lcr_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Battery" :depends-on ("_package_Battery"))
    (:file "_package_Battery" :depends-on ("_package"))
    (:file "BitStatusRos" :depends-on ("_package_BitStatusRos"))
    (:file "_package_BitStatusRos" :depends-on ("_package"))
    (:file "Uls" :depends-on ("_package_Uls"))
    (:file "_package_Uls" :depends-on ("_package"))
  ))