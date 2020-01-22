;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::SetPose)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'SetPose (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::SETPOSE")
  (make-package "LCR_SHARED::SETPOSE"))
(unless (find-package "LCR_SHARED::SETPOSEREQUEST")
  (make-package "LCR_SHARED::SETPOSEREQUEST"))
(unless (find-package "LCR_SHARED::SETPOSERESPONSE")
  (make-package "LCR_SHARED::SETPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass lcr_shared::SetPoseRequest
  :super ros::object
  :slots (_pose ))

(defmethod lcr_shared::SetPoseRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass lcr_shared::SetPoseResponse
  :super ros::object
  :slots (_success ))

(defmethod lcr_shared::SetPoseResponse
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

(defclass lcr_shared::SetPose
  :super ros::object
  :slots ())

(setf (get lcr_shared::SetPose :md5sum-) "b66f4c8c2fa81b98544cf0f3e10950ee")
(setf (get lcr_shared::SetPose :datatype-) "lcr_shared/SetPose")
(setf (get lcr_shared::SetPose :request) lcr_shared::SetPoseRequest)
(setf (get lcr_shared::SetPose :response) lcr_shared::SetPoseResponse)

(defmethod lcr_shared::SetPoseRequest
  (:response () (instance lcr_shared::SetPoseResponse :init)))

(setf (get lcr_shared::SetPoseRequest :md5sum-) "b66f4c8c2fa81b98544cf0f3e10950ee")
(setf (get lcr_shared::SetPoseRequest :datatype-) "lcr_shared/SetPoseRequest")
(setf (get lcr_shared::SetPoseRequest :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
")

(setf (get lcr_shared::SetPoseResponse :md5sum-) "b66f4c8c2fa81b98544cf0f3e10950ee")
(setf (get lcr_shared::SetPoseResponse :datatype-) "lcr_shared/SetPoseResponse")
(setf (get lcr_shared::SetPoseResponse :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
")



(provide :lcr_shared/SetPose "b66f4c8c2fa81b98544cf0f3e10950ee")


