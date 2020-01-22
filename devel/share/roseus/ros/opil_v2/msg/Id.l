;; Auto-generated. Do not edit!


(when (boundp 'opil_v2::Id)
  (if (not (find-package "OPIL_V2"))
    (make-package "OPIL_V2"))
  (shadow 'Id (find-package "OPIL_V2")))
(unless (find-package "OPIL_V2::ID")
  (make-package "OPIL_V2::ID"))

(in-package "ROS")
;;//! \htmlinclude Id.msg.html


(defclass opil_v2::Id
  :super ros::object
  :slots (_id _description ))

(defmethod opil_v2::Id
  (:init
   (&key
    ((:id __id) 0)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _description (string __description))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get opil_v2::Id :md5sum-) "e72fe1424d4b17851cf50f38f76c080e")
(setf (get opil_v2::Id :datatype-) "opil_v2/Id")
(setf (get opil_v2::Id :definition-)
      "# Message for defining IDs
# numeric ID
uint32 id

# optional description of the id
# description can be:
#   - a name
#   - what is descriped by the id
#   - etc.

string description


")



(provide :opil_v2/Id "e72fe1424d4b17851cf50f38f76c080e")


