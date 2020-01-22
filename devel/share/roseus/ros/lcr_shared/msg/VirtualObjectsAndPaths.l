;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::VirtualObjectsAndPaths)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'VirtualObjectsAndPaths (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS")
  (make-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))

(in-package "ROS")
;;//! \htmlinclude VirtualObjectsAndPaths.msg.html


(intern "*OBJECTTYPE_TAG*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*OBJECTTYPE_TAG* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*OBJECTTYPE_TAG* -3)
(intern "*OBJECTTYPE_RECHARGE_WAYPOINT*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*OBJECTTYPE_RECHARGE_WAYPOINT* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*OBJECTTYPE_RECHARGE_WAYPOINT* -2)
(intern "*OBJECTTYPE_NONE*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*OBJECTTYPE_NONE* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*OBJECTTYPE_NONE* -1)
(intern "*OBJECTTYPE_OBSTACLE*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*OBJECTTYPE_OBSTACLE* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*OBJECTTYPE_OBSTACLE* 0)
(intern "*OBJECTTYPE_CHARGEPOINT*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*OBJECTTYPE_CHARGEPOINT* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*OBJECTTYPE_CHARGEPOINT* 1)
(intern "*OBJECTTYPE_CHECKPOINT*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*OBJECTTYPE_CHECKPOINT* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*OBJECTTYPE_CHECKPOINT* 2)
(intern "*OBJECTTYPE_SPEED_LIMIT_ZONE*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*OBJECTTYPE_SPEED_LIMIT_ZONE* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*OBJECTTYPE_SPEED_LIMIT_ZONE* 3)
(intern "*OBJECTTYPE_NO_DISTANCE_ZONE*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*OBJECTTYPE_NO_DISTANCE_ZONE* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*OBJECTTYPE_NO_DISTANCE_ZONE* 4)
(intern "*SHAPETYPE_NONE*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*SHAPETYPE_NONE* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*SHAPETYPE_NONE* -1)
(intern "*SHAPETYPE_LINE*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*SHAPETYPE_LINE* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*SHAPETYPE_LINE* 0)
(intern "*SHAPETYPE_RECTANGLE*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*SHAPETYPE_RECTANGLE* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*SHAPETYPE_RECTANGLE* 1)
(intern "*SHAPETYPE_CIRCLE*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*SHAPETYPE_CIRCLE* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*SHAPETYPE_CIRCLE* 2)
(intern "*SHAPETYPE_POLYGON*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*SHAPETYPE_POLYGON* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*SHAPETYPE_POLYGON* 3)
(intern "*PATHTYPE_LINEPATH*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*PATHTYPE_LINEPATH* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*PATHTYPE_LINEPATH* 0)
(intern "*PATHTYPE_CURVEPATH*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*PATHTYPE_CURVEPATH* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*PATHTYPE_CURVEPATH* 1)
(intern "*PATHDIRECTION_TWO_WAY*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*PATHDIRECTION_TWO_WAY* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*PATHDIRECTION_TWO_WAY* 0)
(intern "*PATHDIRECTION_FROM_A_TO_B*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*PATHDIRECTION_FROM_A_TO_B* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*PATHDIRECTION_FROM_A_TO_B* 1)
(intern "*PATHDIRECTION_FROM_B_TO_A*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*PATHDIRECTION_FROM_B_TO_A* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*PATHDIRECTION_FROM_B_TO_A* 2)
(intern "*PATHDIRECTION_ALTERNATING_ONE_WAY*" (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(shadow '*PATHDIRECTION_ALTERNATING_ONE_WAY* (find-package "LCR_SHARED::VIRTUALOBJECTSANDPATHS"))
(defconstant lcr_shared::VirtualObjectsAndPaths::*PATHDIRECTION_ALTERNATING_ONE_WAY* 3)
(defclass lcr_shared::VirtualObjectsAndPaths
  :super ros::object
  :slots (_version _virtualObjects_Id _virtualObjects_Name _virtualObjects_ObjectType _virtualObjects_PositionX _virtualObjects_PositionY _virtualObjects_Rotation _virtualObjects_ShapeType _paths_Id _paths_CurvePointX _paths_CurvePointY _paths_Direction _paths_EndPoint _paths_Name _paths_PathType _paths_StartPoint ))

(defmethod lcr_shared::VirtualObjectsAndPaths
  (:init
   (&key
    ((:version __version) 0)
    ((:virtualObjects_Id __virtualObjects_Id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:virtualObjects_Name __virtualObjects_Name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:virtualObjects_ObjectType __virtualObjects_ObjectType) (make-array 0 :initial-element 0 :element-type :integer))
    ((:virtualObjects_PositionX __virtualObjects_PositionX) (make-array 0 :initial-element 0 :element-type :integer))
    ((:virtualObjects_PositionY __virtualObjects_PositionY) (make-array 0 :initial-element 0 :element-type :integer))
    ((:virtualObjects_Rotation __virtualObjects_Rotation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:virtualObjects_ShapeType __virtualObjects_ShapeType) (make-array 0 :initial-element 0 :element-type :integer))
    ((:paths_Id __paths_Id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:paths_CurvePointX __paths_CurvePointX) (make-array 0 :initial-element 0 :element-type :integer))
    ((:paths_CurvePointY __paths_CurvePointY) (make-array 0 :initial-element 0 :element-type :integer))
    ((:paths_Direction __paths_Direction) (make-array 0 :initial-element 0 :element-type :integer))
    ((:paths_EndPoint __paths_EndPoint) (make-array 0 :initial-element 0 :element-type :integer))
    ((:paths_Name __paths_Name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:paths_PathType __paths_PathType) (make-array 0 :initial-element 0 :element-type :integer))
    ((:paths_StartPoint __paths_StartPoint) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _version (round __version))
   (setq _virtualObjects_Id __virtualObjects_Id)
   (setq _virtualObjects_Name __virtualObjects_Name)
   (setq _virtualObjects_ObjectType __virtualObjects_ObjectType)
   (setq _virtualObjects_PositionX __virtualObjects_PositionX)
   (setq _virtualObjects_PositionY __virtualObjects_PositionY)
   (setq _virtualObjects_Rotation __virtualObjects_Rotation)
   (setq _virtualObjects_ShapeType __virtualObjects_ShapeType)
   (setq _paths_Id __paths_Id)
   (setq _paths_CurvePointX __paths_CurvePointX)
   (setq _paths_CurvePointY __paths_CurvePointY)
   (setq _paths_Direction __paths_Direction)
   (setq _paths_EndPoint __paths_EndPoint)
   (setq _paths_Name __paths_Name)
   (setq _paths_PathType __paths_PathType)
   (setq _paths_StartPoint __paths_StartPoint)
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:virtualObjects_Id
   (&optional __virtualObjects_Id)
   (if __virtualObjects_Id (setq _virtualObjects_Id __virtualObjects_Id)) _virtualObjects_Id)
  (:virtualObjects_Name
   (&optional __virtualObjects_Name)
   (if __virtualObjects_Name (setq _virtualObjects_Name __virtualObjects_Name)) _virtualObjects_Name)
  (:virtualObjects_ObjectType
   (&optional __virtualObjects_ObjectType)
   (if __virtualObjects_ObjectType (setq _virtualObjects_ObjectType __virtualObjects_ObjectType)) _virtualObjects_ObjectType)
  (:virtualObjects_PositionX
   (&optional __virtualObjects_PositionX)
   (if __virtualObjects_PositionX (setq _virtualObjects_PositionX __virtualObjects_PositionX)) _virtualObjects_PositionX)
  (:virtualObjects_PositionY
   (&optional __virtualObjects_PositionY)
   (if __virtualObjects_PositionY (setq _virtualObjects_PositionY __virtualObjects_PositionY)) _virtualObjects_PositionY)
  (:virtualObjects_Rotation
   (&optional __virtualObjects_Rotation)
   (if __virtualObjects_Rotation (setq _virtualObjects_Rotation __virtualObjects_Rotation)) _virtualObjects_Rotation)
  (:virtualObjects_ShapeType
   (&optional __virtualObjects_ShapeType)
   (if __virtualObjects_ShapeType (setq _virtualObjects_ShapeType __virtualObjects_ShapeType)) _virtualObjects_ShapeType)
  (:paths_Id
   (&optional __paths_Id)
   (if __paths_Id (setq _paths_Id __paths_Id)) _paths_Id)
  (:paths_CurvePointX
   (&optional __paths_CurvePointX)
   (if __paths_CurvePointX (setq _paths_CurvePointX __paths_CurvePointX)) _paths_CurvePointX)
  (:paths_CurvePointY
   (&optional __paths_CurvePointY)
   (if __paths_CurvePointY (setq _paths_CurvePointY __paths_CurvePointY)) _paths_CurvePointY)
  (:paths_Direction
   (&optional __paths_Direction)
   (if __paths_Direction (setq _paths_Direction __paths_Direction)) _paths_Direction)
  (:paths_EndPoint
   (&optional __paths_EndPoint)
   (if __paths_EndPoint (setq _paths_EndPoint __paths_EndPoint)) _paths_EndPoint)
  (:paths_Name
   (&optional __paths_Name)
   (if __paths_Name (setq _paths_Name __paths_Name)) _paths_Name)
  (:paths_PathType
   (&optional __paths_PathType)
   (if __paths_PathType (setq _paths_PathType __paths_PathType)) _paths_PathType)
  (:paths_StartPoint
   (&optional __paths_StartPoint)
   (if __paths_StartPoint (setq _paths_StartPoint __paths_StartPoint)) _paths_StartPoint)
  (:serialization-length
   ()
   (+
    ;; int32 _version
    4
    ;; int32[] _virtualObjects_Id
    (* 4    (length _virtualObjects_Id)) 4
    ;; string[] _virtualObjects_Name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _virtualObjects_Name)) 4
    ;; int8[] _virtualObjects_ObjectType
    (* 1    (length _virtualObjects_ObjectType)) 4
    ;; int32[] _virtualObjects_PositionX
    (* 4    (length _virtualObjects_PositionX)) 4
    ;; int32[] _virtualObjects_PositionY
    (* 4    (length _virtualObjects_PositionY)) 4
    ;; float64[] _virtualObjects_Rotation
    (* 8    (length _virtualObjects_Rotation)) 4
    ;; int8[] _virtualObjects_ShapeType
    (* 1    (length _virtualObjects_ShapeType)) 4
    ;; int32[] _paths_Id
    (* 4    (length _paths_Id)) 4
    ;; int32[] _paths_CurvePointX
    (* 4    (length _paths_CurvePointX)) 4
    ;; int32[] _paths_CurvePointY
    (* 4    (length _paths_CurvePointY)) 4
    ;; int32[] _paths_Direction
    (* 4    (length _paths_Direction)) 4
    ;; int32[] _paths_EndPoint
    (* 4    (length _paths_EndPoint)) 4
    ;; string[] _paths_Name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paths_Name)) 4
    ;; int8[] _paths_PathType
    (* 1    (length _paths_PathType)) 4
    ;; int32[] _paths_StartPoint
    (* 4    (length _paths_StartPoint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _version
       (write-long _version s)
     ;; int32[] _virtualObjects_Id
     (write-long (length _virtualObjects_Id) s)
     (dotimes (i (length _virtualObjects_Id))
       (write-long (elt _virtualObjects_Id i) s)
       )
     ;; string[] _virtualObjects_Name
     (write-long (length _virtualObjects_Name) s)
     (dolist (elem _virtualObjects_Name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int8[] _virtualObjects_ObjectType
     (write-long (length _virtualObjects_ObjectType) s)
     (dotimes (i (length _virtualObjects_ObjectType))
       (write-byte (elt _virtualObjects_ObjectType i) s)
       )
     ;; int32[] _virtualObjects_PositionX
     (write-long (length _virtualObjects_PositionX) s)
     (dotimes (i (length _virtualObjects_PositionX))
       (write-long (elt _virtualObjects_PositionX i) s)
       )
     ;; int32[] _virtualObjects_PositionY
     (write-long (length _virtualObjects_PositionY) s)
     (dotimes (i (length _virtualObjects_PositionY))
       (write-long (elt _virtualObjects_PositionY i) s)
       )
     ;; float64[] _virtualObjects_Rotation
     (write-long (length _virtualObjects_Rotation) s)
     (dotimes (i (length _virtualObjects_Rotation))
       (sys::poke (elt _virtualObjects_Rotation i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int8[] _virtualObjects_ShapeType
     (write-long (length _virtualObjects_ShapeType) s)
     (dotimes (i (length _virtualObjects_ShapeType))
       (write-byte (elt _virtualObjects_ShapeType i) s)
       )
     ;; int32[] _paths_Id
     (write-long (length _paths_Id) s)
     (dotimes (i (length _paths_Id))
       (write-long (elt _paths_Id i) s)
       )
     ;; int32[] _paths_CurvePointX
     (write-long (length _paths_CurvePointX) s)
     (dotimes (i (length _paths_CurvePointX))
       (write-long (elt _paths_CurvePointX i) s)
       )
     ;; int32[] _paths_CurvePointY
     (write-long (length _paths_CurvePointY) s)
     (dotimes (i (length _paths_CurvePointY))
       (write-long (elt _paths_CurvePointY i) s)
       )
     ;; int32[] _paths_Direction
     (write-long (length _paths_Direction) s)
     (dotimes (i (length _paths_Direction))
       (write-long (elt _paths_Direction i) s)
       )
     ;; int32[] _paths_EndPoint
     (write-long (length _paths_EndPoint) s)
     (dotimes (i (length _paths_EndPoint))
       (write-long (elt _paths_EndPoint i) s)
       )
     ;; string[] _paths_Name
     (write-long (length _paths_Name) s)
     (dolist (elem _paths_Name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int8[] _paths_PathType
     (write-long (length _paths_PathType) s)
     (dotimes (i (length _paths_PathType))
       (write-byte (elt _paths_PathType i) s)
       )
     ;; int32[] _paths_StartPoint
     (write-long (length _paths_StartPoint) s)
     (dotimes (i (length _paths_StartPoint))
       (write-long (elt _paths_StartPoint i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _version
     (setq _version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _virtualObjects_Id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _virtualObjects_Id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _virtualObjects_Id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _virtualObjects_Name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _virtualObjects_Name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _virtualObjects_Name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int8[] _virtualObjects_ObjectType
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _virtualObjects_ObjectType (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _virtualObjects_ObjectType i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _virtualObjects_ObjectType i) 127) (setf (elt _virtualObjects_ObjectType i) (- (elt _virtualObjects_ObjectType i) 256)))
     ))
   ;; int32[] _virtualObjects_PositionX
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _virtualObjects_PositionX (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _virtualObjects_PositionX i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _virtualObjects_PositionY
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _virtualObjects_PositionY (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _virtualObjects_PositionY i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _virtualObjects_Rotation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _virtualObjects_Rotation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _virtualObjects_Rotation i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int8[] _virtualObjects_ShapeType
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _virtualObjects_ShapeType (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _virtualObjects_ShapeType i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _virtualObjects_ShapeType i) 127) (setf (elt _virtualObjects_ShapeType i) (- (elt _virtualObjects_ShapeType i) 256)))
     ))
   ;; int32[] _paths_Id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_Id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _paths_Id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _paths_CurvePointX
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_CurvePointX (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _paths_CurvePointX i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _paths_CurvePointY
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_CurvePointY (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _paths_CurvePointY i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _paths_Direction
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_Direction (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _paths_Direction i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _paths_EndPoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_EndPoint (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _paths_EndPoint i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _paths_Name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_Name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _paths_Name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int8[] _paths_PathType
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_PathType (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _paths_PathType i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _paths_PathType i) 127) (setf (elt _paths_PathType i) (- (elt _paths_PathType i) 256)))
     ))
   ;; int32[] _paths_StartPoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_StartPoint (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _paths_StartPoint i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get lcr_shared::VirtualObjectsAndPaths :md5sum-) "20a0913958c29e6abb9bdb538fd57fdd")
(setf (get lcr_shared::VirtualObjectsAndPaths :datatype-) "lcr_shared/VirtualObjectsAndPaths")
(setf (get lcr_shared::VirtualObjectsAndPaths :definition-)
      "int32 version

int8 OBJECTTYPE_TAG = -3
int8 OBJECTTYPE_RECHARGE_WAYPOINT = -2
int8 OBJECTTYPE_NONE = -1
int8 OBJECTTYPE_OBSTACLE = 0
int8 OBJECTTYPE_CHARGEPOINT = 1
int8 OBJECTTYPE_CHECKPOINT = 2
int8 OBJECTTYPE_SPEED_LIMIT_ZONE = 3
int8 OBJECTTYPE_NO_DISTANCE_ZONE = 4

int8 SHAPETYPE_NONE = -1
int8 SHAPETYPE_LINE = 0
int8 SHAPETYPE_RECTANGLE = 1
int8 SHAPETYPE_CIRCLE = 2
int8 SHAPETYPE_POLYGON = 3

int32[] virtualObjects_Id
string[] virtualObjects_Name
int8[] virtualObjects_ObjectType
int32[] virtualObjects_PositionX
int32[] virtualObjects_PositionY
float64[] virtualObjects_Rotation
int8[] virtualObjects_ShapeType

int8 PATHTYPE_LINEPATH = 0
int8 PATHTYPE_CURVEPATH = 1

int8 PATHDIRECTION_TWO_WAY = 0
int8 PATHDIRECTION_FROM_A_TO_B = 1
int8 PATHDIRECTION_FROM_B_TO_A = 2
int8 PATHDIRECTION_ALTERNATING_ONE_WAY = 3

int32[] paths_Id
int32[] paths_CurvePointX
int32[] paths_CurvePointY
int32[] paths_Direction
int32[] paths_EndPoint
string[] paths_Name
int8[] paths_PathType
int32[] paths_StartPoint
")



(provide :lcr_shared/VirtualObjectsAndPaths "20a0913958c29e6abb9bdb538fd57fdd")


