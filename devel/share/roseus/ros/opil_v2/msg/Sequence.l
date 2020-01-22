;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::Sequence)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'Sequence (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::SEQUENCE")
  (make-package "OPIL_V2::SEQUENCE"))

(in-package "ROS")
;;//! \htmlinclude Sequence.msg.html


(defclass opil_v2::Sequence
  :super ros::object
  :slots (_sequence_number _length ))

(defmethod opil_v2::Sequence
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

(setf (get opil_v2::Sequence :md5sum-) "2a41f13649a83eba6bc20a688c3cb1f2")
(setf (get opil_v2::Sequence :datatype-) "opil_v2/Sequence")
(setf (get opil_v2::Sequence :definition-)
      "# Message for defining a sequence
# actual position in the sequence
int32 sequence_number
# overall lenght of the sequence
int32 length

")



(provide :opil_v2/Sequence "2a41f13649a83eba6bc20a688c3cb1f2")


