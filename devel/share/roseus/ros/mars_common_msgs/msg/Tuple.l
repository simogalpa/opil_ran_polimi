;; Auto-generated. Do not edit!


(when (boundp 'mars_common_msgs::Tuple)
  (if (not (find-package "MARS_COMMON_MSGS"))
    (make-package "MARS_COMMON_MSGS"))
  (shadow 'Tuple (find-package "MARS_COMMON_MSGS")))
(unless (find-package "MARS_COMMON_MSGS::TUPLE")
  (make-package "MARS_COMMON_MSGS::TUPLE"))

(in-package "ROS")
;;//! \htmlinclude Tuple.msg.html


(defclass mars_common_msgs::Tuple
  :super ros::object
  :slots (_type _name _value ))

(defmethod mars_common_msgs::Tuple
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

(setf (get mars_common_msgs::Tuple :md5sum-) "6496eae46f94d8eb3a3110f55e520950")
(setf (get mars_common_msgs::Tuple :datatype-) "mars_common_msgs/Tuple")
(setf (get mars_common_msgs::Tuple :definition-)
      "string type
string name
string value
")



(provide :mars_common_msgs/Tuple "6496eae46f94d8eb3a3110f55e520950")


