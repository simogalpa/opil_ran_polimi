; Auto-generated. Do not edit!


(cl:in-package opil_v2-msg)


;//! \htmlinclude AssignmentStatus.msg.html

(cl:defclass <AssignmentStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (current_task_id
    :reader current_task_id
    :initarg :current_task_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (current_motion_id
    :reader current_motion_id
    :initarg :current_motion_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (current_action_id
    :reader current_action_id
    :initarg :current_action_id
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (last_finished_motion
    :reader last_finished_motion
    :initarg :last_finished_motion
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (last_finished_action
    :reader last_finished_action
    :initarg :last_finished_action
    :type opil_v2-msg:Id
    :initform (cl:make-instance 'opil_v2-msg:Id))
   (assignment_queue
    :reader assignment_queue
    :initarg :assignment_queue
    :type (cl:vector opil_v2-msg:AssignmentId)
   :initform (cl:make-array 0 :element-type 'opil_v2-msg:AssignmentId :initial-element (cl:make-instance 'opil_v2-msg:AssignmentId)))
   (footprint
    :reader footprint
    :initarg :footprint
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass AssignmentStatus (<AssignmentStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignmentStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignmentStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opil_v2-msg:<AssignmentStatus> is deprecated: use opil_v2-msg:AssignmentStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:header-val is deprecated.  Use opil_v2-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:robot_id-val is deprecated.  Use opil_v2-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'current_task_id-val :lambda-list '(m))
(cl:defmethod current_task_id-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:current_task_id-val is deprecated.  Use opil_v2-msg:current_task_id instead.")
  (current_task_id m))

(cl:ensure-generic-function 'current_motion_id-val :lambda-list '(m))
(cl:defmethod current_motion_id-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:current_motion_id-val is deprecated.  Use opil_v2-msg:current_motion_id instead.")
  (current_motion_id m))

(cl:ensure-generic-function 'current_action_id-val :lambda-list '(m))
(cl:defmethod current_action_id-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:current_action_id-val is deprecated.  Use opil_v2-msg:current_action_id instead.")
  (current_action_id m))

(cl:ensure-generic-function 'last_finished_motion-val :lambda-list '(m))
(cl:defmethod last_finished_motion-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:last_finished_motion-val is deprecated.  Use opil_v2-msg:last_finished_motion instead.")
  (last_finished_motion m))

(cl:ensure-generic-function 'last_finished_action-val :lambda-list '(m))
(cl:defmethod last_finished_action-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:last_finished_action-val is deprecated.  Use opil_v2-msg:last_finished_action instead.")
  (last_finished_action m))

(cl:ensure-generic-function 'assignment_queue-val :lambda-list '(m))
(cl:defmethod assignment_queue-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:assignment_queue-val is deprecated.  Use opil_v2-msg:assignment_queue instead.")
  (assignment_queue m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <AssignmentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:footprint-val is deprecated.  Use opil_v2-msg:footprint instead.")
  (footprint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignmentStatus>) ostream)
  "Serializes a message object of type '<AssignmentStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_task_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_motion_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_action_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_finished_motion) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_finished_action) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'assignment_queue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'assignment_queue))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'footprint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignmentStatus>) istream)
  "Deserializes a message object of type '<AssignmentStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_task_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_motion_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_action_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_finished_motion) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_finished_action) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'assignment_queue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'assignment_queue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'opil_v2-msg:AssignmentId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'footprint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignmentStatus>)))
  "Returns string type for a message object of type '<AssignmentStatus>"
  "opil_v2/AssignmentStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignmentStatus)))
  "Returns string type for a message object of type 'AssignmentStatus"
  "opil_v2/AssignmentStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignmentStatus>)))
  "Returns md5sum for a message object of type '<AssignmentStatus>"
  "bcb703123a6ab6a630050f9c05aea956")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignmentStatus)))
  "Returns md5sum for a message object of type 'AssignmentStatus"
  "bcb703123a6ab6a630050f9c05aea956")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignmentStatus>)))
  "Returns full string definition for message of type '<AssignmentStatus>"
  (cl:format cl:nil "std_msgs/Header header~%Id robot_id~%Id current_task_id~%Id current_motion_id~%Id current_action_id~%Id last_finished_motion~%Id last_finished_action~%AssignmentId[] assignment_queue~%# string assignment_queue~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: opil_v2/AssignmentId~%# Message for the definition of the ids of an Assignment~%uint32 task_id~%uint32 action_id~%uint32 motion_id~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignmentStatus)))
  "Returns full string definition for message of type 'AssignmentStatus"
  (cl:format cl:nil "std_msgs/Header header~%Id robot_id~%Id current_task_id~%Id current_motion_id~%Id current_action_id~%Id last_finished_motion~%Id last_finished_action~%AssignmentId[] assignment_queue~%# string assignment_queue~%geometry_msgs/PolygonStamped footprint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: opil_v2/Id~%# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%================================================================================~%MSG: opil_v2/AssignmentId~%# Message for the definition of the ids of an Assignment~%uint32 task_id~%uint32 action_id~%uint32 motion_id~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignmentStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_task_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_motion_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_action_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_finished_motion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_finished_action))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'assignment_queue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'footprint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignmentStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignmentStatus
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':current_task_id (current_task_id msg))
    (cl:cons ':current_motion_id (current_motion_id msg))
    (cl:cons ':current_action_id (current_action_id msg))
    (cl:cons ':last_finished_motion (last_finished_motion msg))
    (cl:cons ':last_finished_action (last_finished_action msg))
    (cl:cons ':assignment_queue (assignment_queue msg))
    (cl:cons ':footprint (footprint msg))
))
