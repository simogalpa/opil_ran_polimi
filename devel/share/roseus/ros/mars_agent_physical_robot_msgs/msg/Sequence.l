;; Auto-generated. Do not edit!


(when (boundp 'mars_agent_physical_robot_msgs::Sequence)
  (if (not (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
    (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS"))
  (shadow 'Sequence (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS")))
(unless (find-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::SEQUENCE")
  (make-package "MARS_AGENT_PHYSICAL_ROBOT_MSGS::SEQUENCE"))

(in-package "ROS")
;;//! \htmlinclude Sequence.msg.html


(defclass mars_agent_physical_robot_msgs::Sequence
  :super ros::object
  :slots (_sequence_number _length ))

(defmethod mars_agent_physical_robot_msgs::Sequence
  (:init
   (&key
    ((:sequence_number __sequence_number) 0)
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _sequence_number (round __sequence_number))
   (setq _length (round __length))
   self)
  (:sequence_number
   (&optional __sequence_number)
   (if __sequence_number (setq _sequence_number __sequence_number)) _sequence_number)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; int32 _sequence_number
    4
    ;; int32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sequence_number
       (write-long _sequence_number s)
     ;; int32 _length
       (write-long _length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sequence_number
     (setq _sequence_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mars_agent_physical_robot_msgs::Sequence :md5sum-) "2a41f13649a83eba6bc20a688c3cb1f2")
(setf (get mars_agent_physical_robot_msgs::Sequence :datatype-) "mars_agent_physical_robot_msgs/Sequence")
(setf (get mars_agent_physical_robot_msgs::Sequence :definition-)
      "# Message for defining a sequence.

# Actual position in the sequence. The sequence starts at 1! 
int32 sequence_number
# Overall lenght of the sequence
int32 length

")



(provide :mars_agent_physical_robot_msgs/Sequence "2a41f13649a83eba6bc20a688c3cb1f2")


