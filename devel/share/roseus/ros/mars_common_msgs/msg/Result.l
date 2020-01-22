;; Auto-generated. Do not edit!


(when (boundp 'mars_common_msgs::Result)
  (if (not (find-package "MARS_COMMON_MSGS"))
    (make-package "MARS_COMMON_MSGS"))
  (shadow 'Result (find-package "MARS_COMMON_MSGS")))
(unless (find-package "MARS_COMMON_MSGS::RESULT")
  (make-package "MARS_COMMON_MSGS::RESULT"))

(in-package "ROS")
;;//! \htmlinclude Result.msg.html


(intern "*RESULT_ERROR*" (find-package "MARS_COMMON_MSGS::RESULT"))
(shadow '*RESULT_ERROR* (find-package "MARS_COMMON_MSGS::RESULT"))
(defconstant mars_common_msgs::Result::*RESULT_ERROR* -1)
(intern "*RESULT_SUCCESS*" (find-package "MARS_COMMON_MSGS::RESULT"))
(shadow '*RESULT_SUCCESS* (find-package "MARS_COMMON_MSGS::RESULT"))
(defconstant mars_common_msgs::Result::*RESULT_SUCCESS* 0)
(intern "*RESULT_SUCCESS_ADDITIONAL_INFO*" (find-package "MARS_COMMON_MSGS::RESULT"))
(shadow '*RESULT_SUCCESS_ADDITIONAL_INFO* (find-package "MARS_COMMON_MSGS::RESULT"))
(defconstant mars_common_msgs::Result::*RESULT_SUCCESS_ADDITIONAL_INFO* 1)
(defclass mars_common_msgs::Result
  :super ros::object
  :slots (_result _description ))

(defmethod mars_common_msgs::Result
  (:init
   (&key
    ((:result __result) 0)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _description (string __description))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; int8 _result
    1
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _result
       (write-byte _result s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result 127) (setq _result (- _result 256)))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mars_common_msgs::Result :md5sum-) "fca73f6d4e444c1fbc287204cabcd88b")
(setf (get mars_common_msgs::Result :datatype-) "mars_common_msgs/Result")
(setf (get mars_common_msgs::Result :definition-)
      "# Definition of possible results
# In general:
# - a result less zero represents an error
# - a result equal to zero represents
# - a result greater zero represents

# < 0: Error with further information
int8 RESULT_ERROR=-1

# == 0: Success
int8 RESULT_SUCCESS=0

# > 0: Success with additional information
int8 RESULT_SUCCESS_ADDITIONAL_INFO=1

int8 result
string description

")



(provide :mars_common_msgs/Result "fca73f6d4e444c1fbc287204cabcd88b")


