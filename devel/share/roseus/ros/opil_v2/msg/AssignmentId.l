;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::AssignmentId)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'AssignmentId (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::ASSIGNMENTID")
  (make-package "OPIL_V2::ASSIGNMENTID"))

(in-package "ROS")
;;//! \htmlinclude AssignmentId.msg.html


(defclass opil_v2::AssignmentId
  :super ros::object
  :slots (_task_id _action_id _motion_id ))

(defmethod opil_v2::AssignmentId
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:action_id __action_id) 0)
    ((:motion_id __motion_id) 0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _action_id (round __action_id))
   (setq _motion_id (round __motion_id))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:action_id
   (&optional __action_id)
   (if __action_id (setq _action_id __action_id)) _action_id)
  (:motion_id
   (&optional __motion_id)
   (if __motion_id (setq _motion_id __motion_id)) _motion_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _task_id
    4
    ;; uint32 _action_id
    4
    ;; uint32 _motion_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; uint32 _action_id
       (write-long _action_id s)
     ;; uint32 _motion_id
       (write-long _motion_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _action_id
     (setq _action_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _motion_id
     (setq _motion_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get opil_v2::AssignmentId :md5sum-) "03abaced4ef628770599470870550be6")
(setf (get opil_v2::AssignmentId :datatype-) "opil_v2/AssignmentId")
(setf (get opil_v2::AssignmentId :definition-)
      "# Message for the definition of the ids of an Assignment
uint32 task_id
uint32 action_id
uint32 motion_id

")



(provide :opil_v2/AssignmentId "03abaced4ef628770599470870550be6")


