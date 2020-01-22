;; Auto-generated. Do not edit!


(when (boundp 'RAN::Emergency)
  (if (not (find-package "RAN"))
    (make-package "RAN"))
  (shadow 'Emergency (find-package "RAN")))
(unless (find-package "RAN::EMERGENCY")
  (make-package "RAN::EMERGENCY"))

(in-package "ROS")
;;//! \htmlinclude Emergency.msg.html
(if (not (find-package "MARS_COMMON_MSGS"))
  (ros::roseus-add-msgs "mars_common_msgs"))


(intern "*STOP*" (find-package "RAN::EMERGENCY"))
(shadow '*STOP* (find-package "RAN::EMERGENCY"))
(defconstant RAN::Emergency::*STOP* 0)
(intern "*RESTART*" (find-package "RAN::EMERGENCY"))
(shadow '*RESTART* (find-package "RAN::EMERGENCY"))
(defconstant RAN::Emergency::*RESTART* 1)
(defclass RAN::Emergency
  :super ros::object
  :slots (_robot_id _command _description ))

(defmethod RAN::Emergency
  (:init
   (&key
    ((:robot_id __robot_id) (instance mars_common_msgs::Id :init))
    ((:command __command) 0)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _robot_id __robot_id)
   (setq _command (round __command))
   (setq _description (string __description))
   self)
  (:robot_id
   (&rest __robot_id)
   (if (keywordp (car __robot_id))
       (send* _robot_id __robot_id)
     (progn
       (if __robot_id (setq _robot_id (car __robot_id)))
       _robot_id)))
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; mars_common_msgs/Id _robot_id
    (send _robot_id :serialization-length)
    ;; uint8 _command
    1
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mars_common_msgs/Id _robot_id
       (send _robot_id :serialize s)
     ;; uint8 _command
       (write-byte _command s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mars_common_msgs/Id _robot_id
     (send _robot_id :deserialize buf ptr-) (incf ptr- (send _robot_id :serialization-length))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get RAN::Emergency :md5sum-) "15039e86619bd710ab69714ec41122a0")
(setf (get RAN::Emergency :datatype-) "RAN/Emergency")
(setf (get RAN::Emergency :definition-)
      "# Emergency message
mars_common_msgs/Id robot_id
uint8 STOP = 0
uint8 RESTART = 1
uint8 command
string description

================================================================================
MSG: mars_common_msgs/Id
# Universally Unique Identifier (UUID)
# A UUID is a 128-bit number used to identify information in computer systems. 
# The term globally unique identifier (GUID) is also used. 
# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier
uint8[16] uuid

# optional description of the id
# description can be:
#   - a name
#   - what is descriped by the id
#   - etc.
string description

")



(provide :RAN/Emergency "15039e86619bd710ab69714ec41122a0")


