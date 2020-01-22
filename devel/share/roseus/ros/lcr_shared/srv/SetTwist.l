;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::SetTwist)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'SetTwist (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::SETTWIST")
  (make-package "LCR_SHARED::SETTWIST"))
(unless (find-package "LCR_SHARED::SETTWISTREQUEST")
  (make-package "LCR_SHARED::SETTWISTREQUEST"))
(unless (find-package "LCR_SHARED::SETTWISTRESPONSE")
  (make-package "LCR_SHARED::SETTWISTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass lcr_shared::SetTwistRequest
  :super ros::object
  :slots (_twist ))

(defmethod lcr_shared::SetTwistRequest
  (:init
   (&key
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _twist __twist)
   self)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(defclass lcr_shared::SetTwistResponse
  :super ros::object
  :slots (_success ))

(defmethod lcr_shared::SetTwistResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass lcr_shared::SetTwist
  :super ros::object
  :slots ())

(setf (get lcr_shared::SetTwist :md5sum-) "3a27371a87ddb704c39e3f435f403d24")
(setf (get lcr_shared::SetTwist :datatype-) "lcr_shared/SetTwist")
(setf (get lcr_shared::SetTwist :request) lcr_shared::SetTwistRequest)
(setf (get lcr_shared::SetTwist :response) lcr_shared::SetTwistResponse)

(defmethod lcr_shared::SetTwistRequest
  (:response () (instance lcr_shared::SetTwistResponse :init)))

(setf (get lcr_shared::SetTwistRequest :md5sum-) "3a27371a87ddb704c39e3f435f403d24")
(setf (get lcr_shared::SetTwistRequest :datatype-) "lcr_shared/SetTwistRequest")
(setf (get lcr_shared::SetTwistRequest :definition-)
      "geometry_msgs/Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
")

(setf (get lcr_shared::SetTwistResponse :md5sum-) "3a27371a87ddb704c39e3f435f403d24")
(setf (get lcr_shared::SetTwistResponse :datatype-) "lcr_shared/SetTwistResponse")
(setf (get lcr_shared::SetTwistResponse :definition-)
      "geometry_msgs/Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
")



(provide :lcr_shared/SetTwist "3a27371a87ddb704c39e3f435f403d24")


