;; Auto-generated. Do not edit!


(when (boundp 'lcr_shared::database)
  (if (not (find-package "LCR_SHARED"))
    (make-package "LCR_SHARED"))
  (shadow 'database (find-package "LCR_SHARED")))
(unless (find-package "LCR_SHARED::DATABASE")
  (make-package "LCR_SHARED::DATABASE"))
(unless (find-package "LCR_SHARED::DATABASEREQUEST")
  (make-package "LCR_SHARED::DATABASEREQUEST"))
(unless (find-package "LCR_SHARED::DATABASERESPONSE")
  (make-package "LCR_SHARED::DATABASERESPONSE"))

(in-package "ROS")





(defclass lcr_shared::databaseRequest
  :super ros::object
  :slots ())

(defmethod lcr_shared::databaseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass lcr_shared::databaseResponse
  :super ros::object
  :slots (_db ))

(defmethod lcr_shared::databaseResponse
  (:init
   (&key
    ((:db __db) (instance lcr_shared::VirtualObjectsAndPaths :init))
    )
   (send-super :init)
   (setq _db __db)
   self)
  (:db
   (&rest __db)
   (if (keywordp (car __db))
       (send* _db __db)
     (progn
       (if __db (setq _db (car __db)))
       _db)))
  (:serialization-length
   ()
   (+
    ;; lcr_shared/VirtualObjectsAndPaths _db
    (send _db :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lcr_shared/VirtualObjectsAndPaths _db
       (send _db :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lcr_shared/VirtualObjectsAndPaths _db
     (send _db :deserialize buf ptr-) (incf ptr- (send _db :serialization-length))
   ;;
   self)
  )

(defclass lcr_shared::database
  :super ros::object
  :slots ())

(setf (get lcr_shared::database :md5sum-) "2852c5aabf45e25b23b8821ac51dc772")
(setf (get lcr_shared::database :datatype-) "lcr_shared/database")
(setf (get lcr_shared::database :request) lcr_shared::databaseRequest)
(setf (get lcr_shared::database :response) lcr_shared::databaseResponse)

(defmethod lcr_shared::databaseRequest
  (:response () (instance lcr_shared::databaseResponse :init)))

(setf (get lcr_shared::databaseRequest :md5sum-) "2852c5aabf45e25b23b8821ac51dc772")
(setf (get lcr_shared::databaseRequest :datatype-) "lcr_shared/databaseRequest")
(setf (get lcr_shared::databaseRequest :definition-)
      "---
lcr_shared/VirtualObjectsAndPaths db

================================================================================
MSG: lcr_shared/VirtualObjectsAndPaths
int32 version

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
")

(setf (get lcr_shared::databaseResponse :md5sum-) "2852c5aabf45e25b23b8821ac51dc772")
(setf (get lcr_shared::databaseResponse :datatype-) "lcr_shared/databaseResponse")
(setf (get lcr_shared::databaseResponse :definition-)
      "---
lcr_shared/VirtualObjectsAndPaths db

================================================================================
MSG: lcr_shared/VirtualObjectsAndPaths
int32 version

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
")



(provide :lcr_shared/database "2852c5aabf45e25b23b8821ac51dc772")


