;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::SetString)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'SetString (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::SETSTRING")
  (make-package "LCR_SHARED::SETSTRING"))
(unless (find-package "LCR_SHARED::SETSTRINGREQUEST")
  (make-package "LCR_SHARED::SETSTRINGREQUEST"))
(unless (find-package "LCR_SHARED::SETSTRINGRESPONSE")
  (make-package "LCR_SHARED::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass lcr_shared::SetStringRequest
  :super ros::object
  :slots (_data _requestor _seq _velocity_scale ))

(defmethod lcr_shared::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    ((:requestor __requestor) "")
    ((:seq __seq) 0)
    ((:velocity_scale __velocity_scale) 0.0)
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _requestor (string __requestor))
   (setq _seq (round __seq))
   (setq _velocity_scale (float __velocity_scale))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:requestor
   (&optional __requestor)
   (if __requestor (setq _requestor __requestor)) _requestor)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:velocity_scale
   (&optional __velocity_scale)
   (if __velocity_scale (setq _velocity_scale __velocity_scale)) _velocity_scale)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; string _requestor
    4 (length _requestor)
    ;; int32 _seq
    4
    ;; float64 _velocity_scale
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; string _requestor
       (write-long (length _requestor) s) (princ _requestor s)
     ;; int32 _seq
       (write-long _seq s)
     ;; float64 _velocity_scale
       (sys::poke _velocity_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _requestor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _requestor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _velocity_scale
     (setq _velocity_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass lcr_shared::SetStringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod lcr_shared::SetStringResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lcr_shared::SetString
  :super ros::object
  :slots ())

(setf (get lcr_shared::SetString :md5sum-) "3b299168ae7ef96a0b530fd61c32889b")
(setf (get lcr_shared::SetString :datatype-) "lcr_shared/SetString")
(setf (get lcr_shared::SetString :request) lcr_shared::SetStringRequest)
(setf (get lcr_shared::SetString :response) lcr_shared::SetStringResponse)

(defmethod lcr_shared::SetStringRequest
  (:response () (instance lcr_shared::SetStringResponse :init)))

(setf (get lcr_shared::SetStringRequest :md5sum-) "3b299168ae7ef96a0b530fd61c32889b")
(setf (get lcr_shared::SetStringRequest :datatype-) "lcr_shared/SetStringRequest")
(setf (get lcr_shared::SetStringRequest :definition-)
      "string data
string requestor
int32 seq
float64 velocity_scale
---
bool success
string message
")

(setf (get lcr_shared::SetStringResponse :md5sum-) "3b299168ae7ef96a0b530fd61c32889b")
(setf (get lcr_shared::SetStringResponse :datatype-) "lcr_shared/SetStringResponse")
(setf (get lcr_shared::SetStringResponse :definition-)
      "string data
string requestor
int32 seq
float64 velocity_scale
---
bool success
string message
")



(provide :lcr_shared/SetString "3b299168ae7ef96a0b530fd61c32889b")


