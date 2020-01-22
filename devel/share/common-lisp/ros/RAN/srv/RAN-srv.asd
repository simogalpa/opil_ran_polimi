
(cl:in-package :asdf)

(defsystem "RAN-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Elevator" :depends-on ("_package_Elevator"))
    (:file "_package_Elevator" :depends-on ("_package"))
  ))