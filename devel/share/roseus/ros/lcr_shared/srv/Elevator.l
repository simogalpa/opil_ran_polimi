;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::Elevator)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'Elevator (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::ELEVATOR")
  (make-package "LCR_SHARED::ELEVATOR"))
(unless (find-package "LCR_SHARED::ELEVATORREQUEST")
  (make-package "LCR_SHARED::ELEVATORREQUEST"))
(unless (find-package "LCR_SHARED::ELEVATORRESPONSE")
  (make-package "LCR_SHARED::ELEVATORRESPONSE"))

(in-package "ROS")





(defclass lcr_shared::ElevatorRequest
  :super ros::object
  :slots (_action _desired_floor ))

(defmethod lcr_shared::ElevatorRequest
  (:init
   (&key
    ((:action __action) "")
    ((:desired_floor __desired_floor) 0)
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _desired_floor (round __desired_floor))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:desired_floor
   (&optional __desired_floor)
   (if __desired_floor (setq _desired_floor __desired_floor)) _desired_floor)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; int8 _desired_floor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; int8 _desired_floor
       (write-byte _desired_floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _desired_floor
     (setq _desired_floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _desired_floor 127) (setq _desired_floor (- _desired_floor 256)))
   ;;
   self)
  )

(defclass lcr_shared::ElevatorResponse
  :super ros::object
  :slots (_success _message ))

(defmethod lcr_shared::ElevatorResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lcr_shared::Elevator
  :super ros::object
  :slots ())

(setf (get lcr_shared::Elevator :md5sum-) "95eb02fdea4929cfb10e81b4601959cf")
(setf (get lcr_shared::Elevator :datatype-) "lcr_shared/Elevator")
(setf (get lcr_shared::Elevator :request) lcr_shared::ElevatorRequest)
(setf (get lcr_shared::Elevator :response) lcr_shared::ElevatorResponse)

(defmethod lcr_shared::ElevatorRequest
  (:response () (instance lcr_shared::ElevatorResponse :init)))

(setf (get lcr_shared::ElevatorRequest :md5sum-) "95eb02fdea4929cfb10e81b4601959cf")
(setf (get lcr_shared::ElevatorRequest :datatype-) "lcr_shared/ElevatorRequest")
(setf (get lcr_shared::ElevatorRequest :definition-)
      "string action
int8 desired_floor
---
bool success
string message
")

(setf (get lcr_shared::ElevatorResponse :md5sum-) "95eb02fdea4929cfb10e81b4601959cf")
(setf (get lcr_shared::ElevatorResponse :datatype-) "lcr_shared/ElevatorResponse")
(setf (get lcr_shared::ElevatorResponse :definition-)
      "string action
int8 desired_floor
---
bool success
string message
")



(provide :lcr_shared/Elevator "95eb02fdea4929cfb10e81b4601959cf")


