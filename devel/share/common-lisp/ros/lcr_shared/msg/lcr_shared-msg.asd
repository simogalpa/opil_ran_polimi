
(cl:in-package :asdf)

(defsystem "lcr_shared-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ElevatorStatus" :depends-on ("_package_ElevatorStatus"))
    (:file "_package_ElevatorStatus" :depends-on ("_package"))
    (:file "LCRError" :depends-on ("_package_LCRError"))
    (:file "_package_LCRError" :depends-on ("_package"))
    (:file "LCRStatus" :depends-on ("_package_LCRStatus"))
    (:file "_package_LCRStatus" :depends-on ("_package"))
    (:file "LCRtagSaver" :depends-on ("_package_LCRtagSaver"))
    (:file "_package_LCRtagSaver" :depends-on ("_package"))
    (:file "VirtualObjectsAndPaths" :depends-on ("_package_VirtualObjectsAndPaths"))
    (:file "_package_VirtualObjectsAndPaths" :depends-on ("_package"))
    (:file "wcs_status" :depends-on ("_package_wcs_status"))
    (:file "_package_wcs_status" :depends-on ("_package"))
  ))