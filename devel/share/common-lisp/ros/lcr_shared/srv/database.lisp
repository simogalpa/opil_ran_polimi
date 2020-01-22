; Auto-generated. Do not edit!


(cl:in-package lcr_shared-srv)


;//! \htmlinclude database-request.msg.html

(cl:defclass <database-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass database-request (<database-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <database-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'database-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-srv:<database-request> is deprecated: use lcr_shared-srv:database-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <database-request>) ostream)
  "Serializes a message object of type '<database-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <database-request>) istream)
  "Deserializes a message object of type '<database-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<database-request>)))
  "Returns string type for a service object of type '<database-request>"
  "lcr_shared/databaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'database-request)))
  "Returns string type for a service object of type 'database-request"
  "lcr_shared/databaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<database-request>)))
  "Returns md5sum for a message object of type '<database-request>"
  "2852c5aabf45e25b23b8821ac51dc772")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'database-request)))
  "Returns md5sum for a message object of type 'database-request"
  "2852c5aabf45e25b23b8821ac51dc772")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<database-request>)))
  "Returns full string definition for message of type '<database-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'database-request)))
  "Returns full string definition for message of type 'database-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <database-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <database-request>))
  "Converts a ROS message object to a list"
  (cl:list 'database-request
))
;//! \htmlinclude database-response.msg.html

(cl:defclass <database-response> (roslisp-msg-protocol:ros-message)
  ((db
    :reader db
    :initarg :db
    :type lcr_shared-msg:VirtualObjectsAndPaths
    :initform (cl:make-instance 'lcr_shared-msg:VirtualObjectsAndPaths)))
)

(cl:defclass database-response (<database-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <database-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'database-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-srv:<database-response> is deprecated: use lcr_shared-srv:database-response instead.")))

(cl:ensure-generic-function 'db-val :lambda-list '(m))
(cl:defmethod db-val ((m <database-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-srv:db-val is deprecated.  Use lcr_shared-srv:db instead.")
  (db m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <database-response>) ostream)
  "Serializes a message object of type '<database-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'db) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <database-response>) istream)
  "Deserializes a message object of type '<database-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'db) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<database-response>)))
  "Returns string type for a service object of type '<database-response>"
  "lcr_shared/databaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'database-response)))
  "Returns string type for a service object of type 'database-response"
  "lcr_shared/databaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<database-response>)))
  "Returns md5sum for a message object of type '<database-response>"
  "2852c5aabf45e25b23b8821ac51dc772")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'database-response)))
  "Returns md5sum for a message object of type 'database-response"
  "2852c5aabf45e25b23b8821ac51dc772")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<database-response>)))
  "Returns full string definition for message of type '<database-response>"
  (cl:format cl:nil "lcr_shared/VirtualObjectsAndPaths db~%~%================================================================================~%MSG: lcr_shared/VirtualObjectsAndPaths~%int32 version~%~%int8 OBJECTTYPE_TAG = -3~%int8 OBJECTTYPE_RECHARGE_WAYPOINT = -2~%int8 OBJECTTYPE_NONE = -1~%int8 OBJECTTYPE_OBSTACLE = 0~%int8 OBJECTTYPE_CHARGEPOINT = 1~%int8 OBJECTTYPE_CHECKPOINT = 2~%int8 OBJECTTYPE_SPEED_LIMIT_ZONE = 3~%int8 OBJECTTYPE_NO_DISTANCE_ZONE = 4~%~%int8 SHAPETYPE_NONE = -1~%int8 SHAPETYPE_LINE = 0~%int8 SHAPETYPE_RECTANGLE = 1~%int8 SHAPETYPE_CIRCLE = 2~%int8 SHAPETYPE_POLYGON = 3~%~%int32[] virtualObjects_Id~%string[] virtualObjects_Name~%int8[] virtualObjects_ObjectType~%int32[] virtualObjects_PositionX~%int32[] virtualObjects_PositionY~%float64[] virtualObjects_Rotation~%int8[] virtualObjects_ShapeType~%~%int8 PATHTYPE_LINEPATH = 0~%int8 PATHTYPE_CURVEPATH = 1~%~%int8 PATHDIRECTION_TWO_WAY = 0~%int8 PATHDIRECTION_FROM_A_TO_B = 1~%int8 PATHDIRECTION_FROM_B_TO_A = 2~%int8 PATHDIRECTION_ALTERNATING_ONE_WAY = 3~%~%int32[] paths_Id~%int32[] paths_CurvePointX~%int32[] paths_CurvePointY~%int32[] paths_Direction~%int32[] paths_EndPoint~%string[] paths_Name~%int8[] paths_PathType~%int32[] paths_StartPoint~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'database-response)))
  "Returns full string definition for message of type 'database-response"
  (cl:format cl:nil "lcr_shared/VirtualObjectsAndPaths db~%~%================================================================================~%MSG: lcr_shared/VirtualObjectsAndPaths~%int32 version~%~%int8 OBJECTTYPE_TAG = -3~%int8 OBJECTTYPE_RECHARGE_WAYPOINT = -2~%int8 OBJECTTYPE_NONE = -1~%int8 OBJECTTYPE_OBSTACLE = 0~%int8 OBJECTTYPE_CHARGEPOINT = 1~%int8 OBJECTTYPE_CHECKPOINT = 2~%int8 OBJECTTYPE_SPEED_LIMIT_ZONE = 3~%int8 OBJECTTYPE_NO_DISTANCE_ZONE = 4~%~%int8 SHAPETYPE_NONE = -1~%int8 SHAPETYPE_LINE = 0~%int8 SHAPETYPE_RECTANGLE = 1~%int8 SHAPETYPE_CIRCLE = 2~%int8 SHAPETYPE_POLYGON = 3~%~%int32[] virtualObjects_Id~%string[] virtualObjects_Name~%int8[] virtualObjects_ObjectType~%int32[] virtualObjects_PositionX~%int32[] virtualObjects_PositionY~%float64[] virtualObjects_Rotation~%int8[] virtualObjects_ShapeType~%~%int8 PATHTYPE_LINEPATH = 0~%int8 PATHTYPE_CURVEPATH = 1~%~%int8 PATHDIRECTION_TWO_WAY = 0~%int8 PATHDIRECTION_FROM_A_TO_B = 1~%int8 PATHDIRECTION_FROM_B_TO_A = 2~%int8 PATHDIRECTION_ALTERNATING_ONE_WAY = 3~%~%int32[] paths_Id~%int32[] paths_CurvePointX~%int32[] paths_CurvePointY~%int32[] paths_Direction~%int32[] paths_EndPoint~%string[] paths_Name~%int8[] paths_PathType~%int32[] paths_StartPoint~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <database-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'db))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <database-response>))
  "Converts a ROS message object to a list"
  (cl:list 'database-response
    (cl:cons ':db (db msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'database)))
  'database-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'database)))
  'database-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'database)))
  "Returns string type for a service object of type '<database>"
  "lcr_shared/database")