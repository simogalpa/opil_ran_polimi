;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::LCRtagSaver)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'LCRtagSaver (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::LCRTAGSAVER")
  (make-package "LCR_SHARED::LCRTAGSAVER"))

(in-package "ROS")
;;//! \htmlinclude LCRtagSaver.msg.html


(defclass lcr_shared::LCRtagSaver
  :super ros::object
  :slots (_type _id ))

(defmethod lcr_shared::LCRtagSaver
  (:init
   (&key
    ((:type __type) "")
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _id (round __id))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lcr_shared::LCRtagSaver :md5sum-) "bb7d931af6cd060b0953169ea5e1f692")
(setf (get lcr_shared::LCRtagSaver :datatype-) "lcr_shared/LCRtagSaver")
(setf (get lcr_shared::LCRtagSaver :definition-)
      "string type
int32 id

")



(provide :lcr_shared/LCRtagSaver "bb7d931af6cd060b0953169ea5e1f692")


