;; Auto-generated. Do not edit!


(when (boundp 'lcr_driver::BitStatusRos)
  (if (not (find-package "LCR_DRIVER"))
    (make-package "LCR_DRIVER"))
  (shadow 'BitStatusRos (find-package "LCR_DRIVER")))
(unless (find-package "LCR_DRIVER::BITSTATUSROS")
  (make-package "LCR_DRIVER::BITSTATUSROS"))

(in-package "ROS")
;;//! \htmlinclude BitStatusRos.msg.html


(defclass lcr_driver::BitStatusRos
  :super ros::object
  :slots (_st_Ros_BumpFront _st_Ros_BumpRear _st_Ros_FallFront _st_Ros_FallRear _st_Ros_Emergenza _st_Ros_ErrInt1 _st_Ros_ErrInt2 _st_Ros_Mot_DX_Fail _st_Ros_Mot_SX_Fail _st_Ros_Recharge_Found _st_Ros_Recharge_On _st_Ros_Recharge_Ok _st_Ros_BatteryFail _NofBitStatusRos ))

(defmethod lcr_driver::BitStatusRos
  (:init
   (&key
    ((:st_Ros_BumpFront __st_Ros_BumpFront) nil)
    ((:st_Ros_BumpRear __st_Ros_BumpRear) nil)
    ((:st_Ros_FallFront __st_Ros_FallFront) nil)
    ((:st_Ros_FallRear __st_Ros_FallRear) nil)
    ((:st_Ros_Emergenza __st_Ros_Emergenza) nil)
    ((:st_Ros_ErrInt1 __st_Ros_ErrInt1) nil)
    ((:st_Ros_ErrInt2 __st_Ros_ErrInt2) nil)
    ((:st_Ros_Mot_DX_Fail __st_Ros_Mot_DX_Fail) nil)
    ((:st_Ros_Mot_SX_Fail __st_Ros_Mot_SX_Fail) nil)
    ((:st_Ros_Recharge_Found __st_Ros_Recharge_Found) nil)
    ((:st_Ros_Recharge_On __st_Ros_Recharge_On) nil)
    ((:st_Ros_Recharge_Ok __st_Ros_Recharge_Ok) nil)
    ((:st_Ros_BatteryFail __st_Ros_BatteryFail) nil)
    ((:NofBitStatusRos __NofBitStatusRos) nil)
    )
   (send-super :init)
   (setq _st_Ros_BumpFront __st_Ros_BumpFront)
   (setq _st_Ros_BumpRear __st_Ros_BumpRear)
   (setq _st_Ros_FallFront __st_Ros_FallFront)
   (setq _st_Ros_FallRear __st_Ros_FallRear)
   (setq _st_Ros_Emergenza __st_Ros_Emergenza)
   (setq _st_Ros_ErrInt1 __st_Ros_ErrInt1)
   (setq _st_Ros_ErrInt2 __st_Ros_ErrInt2)
   (setq _st_Ros_Mot_DX_Fail __st_Ros_Mot_DX_Fail)
   (setq _st_Ros_Mot_SX_Fail __st_Ros_Mot_SX_Fail)
   (setq _st_Ros_Recharge_Found __st_Ros_Recharge_Found)
   (setq _st_Ros_Recharge_On __st_Ros_Recharge_On)
   (setq _st_Ros_Recharge_Ok __st_Ros_Recharge_Ok)
   (setq _st_Ros_BatteryFail __st_Ros_BatteryFail)
   (setq _NofBitStatusRos __NofBitStatusRos)
   self)
  (:st_Ros_BumpFront
   (&optional __st_Ros_BumpFront)
   (if __st_Ros_BumpFront (setq _st_Ros_BumpFront __st_Ros_BumpFront)) _st_Ros_BumpFront)
  (:st_Ros_BumpRear
   (&optional __st_Ros_BumpRear)
   (if __st_Ros_BumpRear (setq _st_Ros_BumpRear __st_Ros_BumpRear)) _st_Ros_BumpRear)
  (:st_Ros_FallFront
   (&optional __st_Ros_FallFront)
   (if __st_Ros_FallFront (setq _st_Ros_FallFront __st_Ros_FallFront)) _st_Ros_FallFront)
  (:st_Ros_FallRear
   (&optional __st_Ros_FallRear)
   (if __st_Ros_FallRear (setq _st_Ros_FallRear __st_Ros_FallRear)) _st_Ros_FallRear)
  (:st_Ros_Emergenza
   (&optional __st_Ros_Emergenza)
   (if __st_Ros_Emergenza (setq _st_Ros_Emergenza __st_Ros_Emergenza)) _st_Ros_Emergenza)
  (:st_Ros_ErrInt1
   (&optional __st_Ros_ErrInt1)
   (if __st_Ros_ErrInt1 (setq _st_Ros_ErrInt1 __st_Ros_ErrInt1)) _st_Ros_ErrInt1)
  (:st_Ros_ErrInt2
   (&optional __st_Ros_ErrInt2)
   (if __st_Ros_ErrInt2 (setq _st_Ros_ErrInt2 __st_Ros_ErrInt2)) _st_Ros_ErrInt2)
  (:st_Ros_Mot_DX_Fail
   (&optional __st_Ros_Mot_DX_Fail)
   (if __st_Ros_Mot_DX_Fail (setq _st_Ros_Mot_DX_Fail __st_Ros_Mot_DX_Fail)) _st_Ros_Mot_DX_Fail)
  (:st_Ros_Mot_SX_Fail
   (&optional __st_Ros_Mot_SX_Fail)
   (if __st_Ros_Mot_SX_Fail (setq _st_Ros_Mot_SX_Fail __st_Ros_Mot_SX_Fail)) _st_Ros_Mot_SX_Fail)
  (:st_Ros_Recharge_Found
   (&optional __st_Ros_Recharge_Found)
   (if __st_Ros_Recharge_Found (setq _st_Ros_Recharge_Found __st_Ros_Recharge_Found)) _st_Ros_Recharge_Found)
  (:st_Ros_Recharge_On
   (&optional __st_Ros_Recharge_On)
   (if __st_Ros_Recharge_On (setq _st_Ros_Recharge_On __st_Ros_Recharge_On)) _st_Ros_Recharge_On)
  (:st_Ros_Recharge_Ok
   (&optional __st_Ros_Recharge_Ok)
   (if __st_Ros_Recharge_Ok (setq _st_Ros_Recharge_Ok __st_Ros_Recharge_Ok)) _st_Ros_Recharge_Ok)
  (:st_Ros_BatteryFail
   (&optional __st_Ros_BatteryFail)
   (if __st_Ros_BatteryFail (setq _st_Ros_BatteryFail __st_Ros_BatteryFail)) _st_Ros_BatteryFail)
  (:NofBitStatusRos
   (&optional __NofBitStatusRos)
   (if __NofBitStatusRos (setq _NofBitStatusRos __NofBitStatusRos)) _NofBitStatusRos)
  (:serialization-length
   ()
   (+
    ;; bool _st_Ros_BumpFront
    1
    ;; bool _st_Ros_BumpRear
    1
    ;; bool _st_Ros_FallFront
    1
    ;; bool _st_Ros_FallRear
    1
    ;; bool _st_Ros_Emergenza
    1
    ;; bool _st_Ros_ErrInt1
    1
    ;; bool _st_Ros_ErrInt2
    1
    ;; bool _st_Ros_Mot_DX_Fail
    1
    ;; bool _st_Ros_Mot_SX_Fail
    1
    ;; bool _st_Ros_Recharge_Found
    1
    ;; bool _st_Ros_Recharge_On
    1
    ;; bool _st_Ros_Recharge_Ok
    1
    ;; bool _st_Ros_BatteryFail
    1
    ;; bool _NofBitStatusRos
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _st_Ros_BumpFront
       (if _st_Ros_BumpFront (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_BumpRear
       (if _st_Ros_BumpRear (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_FallFront
       (if _st_Ros_FallFront (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_FallRear
       (if _st_Ros_FallRear (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_Emergenza
       (if _st_Ros_Emergenza (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_ErrInt1
       (if _st_Ros_ErrInt1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_ErrInt2
       (if _st_Ros_ErrInt2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_Mot_DX_Fail
       (if _st_Ros_Mot_DX_Fail (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_Mot_SX_Fail
       (if _st_Ros_Mot_SX_Fail (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_Recharge_Found
       (if _st_Ros_Recharge_Found (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_Recharge_On
       (if _st_Ros_Recharge_On (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_Recharge_Ok
       (if _st_Ros_Recharge_Ok (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_Ros_BatteryFail
       (if _st_Ros_BatteryFail (write-byte -1 s) (write-byte 0 s))
     ;; bool _NofBitStatusRos
       (if _NofBitStatusRos (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _st_Ros_BumpFront
     (setq _st_Ros_BumpFront (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_BumpRear
     (setq _st_Ros_BumpRear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_FallFront
     (setq _st_Ros_FallFront (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_FallRear
     (setq _st_Ros_FallRear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_Emergenza
     (setq _st_Ros_Emergenza (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_ErrInt1
     (setq _st_Ros_ErrInt1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_ErrInt2
     (setq _st_Ros_ErrInt2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_Mot_DX_Fail
     (setq _st_Ros_Mot_DX_Fail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_Mot_SX_Fail
     (setq _st_Ros_Mot_SX_Fail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_Recharge_Found
     (setq _st_Ros_Recharge_Found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_Recharge_On
     (setq _st_Ros_Recharge_On (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_Recharge_Ok
     (setq _st_Ros_Recharge_Ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_Ros_BatteryFail
     (setq _st_Ros_BatteryFail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _NofBitStatusRos
     (setq _NofBitStatusRos (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lcr_driver::BitStatusRos :md5sum-) "2253552a57ac1bef3af9f6d07aaff730")
(setf (get lcr_driver::BitStatusRos :datatype-) "lcr_driver/BitStatusRos")
(setf (get lcr_driver::BitStatusRos :definition-)
      "bool st_Ros_BumpFront
bool st_Ros_BumpRear
bool st_Ros_FallFront
bool st_Ros_FallRear
bool st_Ros_Emergenza
bool st_Ros_ErrInt1
bool st_Ros_ErrInt2
bool st_Ros_Mot_DX_Fail
bool st_Ros_Mot_SX_Fail
bool st_Ros_Recharge_Found
bool st_Ros_Recharge_On
bool st_Ros_Recharge_Ok
bool st_Ros_BatteryFail
bool NofBitStatusRos
")



(provide :lcr_driver/BitStatusRos "2253552a57ac1bef3af9f6d07aaff730")


