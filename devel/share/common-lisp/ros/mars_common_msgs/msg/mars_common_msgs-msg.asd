
(cl:in-package :asdf)

(defsystem "mars_common_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Id" :depends-on ("_package_Id"))
    (:file "_package_Id" :depends-on ("_package"))
    (:file "Result" :depends-on ("_package_Result"))
    (:file "_package_Result" :depends-on ("_package"))
    (:file "Tuple" :depends-on ("_package_Tuple"))
    (:file "_package_Tuple" :depends-on ("_package"))
  ))