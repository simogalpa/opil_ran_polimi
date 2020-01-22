;; Auto-generated. Do not edit!


(when (boundp 'mars_common_msgs::Id)
  (if (not (find-package "MARS_COMMON_MSGS"))
    (make-package "MARS_COMMON_MSGS"))
  (shadow 'Id (find-package "MARS_COMMON_MSGS")))
(unless (find-package "MARS_COMMON_MSGS::ID")
  (make-package "MARS_COMMON_MSGS::ID"))

(in-package "ROS")
;;//! \htmlinclude Id.msg.html


(defclass mars_common_msgs::Id
  :super ros::object
  :slots (_uuid _description ))

(defmethod mars_common_msgs::Id
  (:init
   (&key
    ((:uuid __uuid) (make-array 16 :initial-element 0 :element-type :char))
    ((:description __description) "")
    )
   (send-super :init)
   (setq _uuid __uuid)
   (setq _description (string __description))
   self)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; uint8[16] _uuid
    (* 1    16)
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[16] _uuid
     (princ _uuid s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[16] _uuid
   (setq _uuid (make-array 16 :element-type :char))
   (replace _uuid buf :start2 ptr-) (incf ptr- 16)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mars_common_msgs::Id :md5sum-) "20d26aeafb6083d49d76671a35d45e12")
(setf (get mars_common_msgs::Id :datatype-) "mars_common_msgs/Id")
(setf (get mars_common_msgs::Id :definition-)
      "# Universally Unique Identifier (UUID)
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



(provide :mars_common_msgs/Id "20d26aeafb6083d49d76671a35d45e12")


