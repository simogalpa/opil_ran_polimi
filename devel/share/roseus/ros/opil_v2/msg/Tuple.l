;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::Tuple)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'Tuple (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::TUPLE")
  (make-package "OPIL_V2::TUPLE"))

(in-package "ROS")
;;//! \htmlinclude Tuple.msg.html


(defclass opil_v2::Tuple
  :super ros::object
  :slots (_type _name _value ))

(defmethod opil_v2::Tuple
  (:init
   (&key
    ((:type __type) "")
    ((:name __name) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _name (string __name))
   (setq _value (string __value))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _name
    4 (length _name)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get opil_v2::Tuple :md5sum-) "6496eae46f94d8eb3a3110f55e520950")
(setf (get opil_v2::Tuple :datatype-) "opil_v2/Tuple")
(setf (get opil_v2::Tuple :definition-)
      "string type
string name
string value


")



(provide :opil_v2/Tuple "6496eae46f94d8eb3a3110f55e520950")


