; Auto-generated. Do not edit!


(cl:in-package lcr_shared-srv)


;//! \htmlinclude SetTwist-request.msg.html

(cl:defclass <SetTwist-request> (roslisp-msg-protocol:ros-message)
  ((twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass SetTwist-request (<SetTwist-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTwist-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTwist-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-srv:<SetTwist-request> is deprecated: use lcr_shared-srv:SetTwist-request instead.")))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <SetTwist-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-srv:twist-val is deprecated.  Use lcr_shared-srv:twist instead.")
  (twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTwist-request>) ostream)
  "Serializes a message object of type '<SetTwist-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTwist-request>) istream)
  "Deserializes a message object of type '<SetTwist-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTwist-request>)))
  "Returns string type for a service object of type '<SetTwist-request>"
  "lcr_shared/SetTwistRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTwist-request)))
  "Returns string type for a service object of type 'SetTwist-request"
  "lcr_shared/SetTwistRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTwist-request>)))
  "Returns md5sum for a message object of type '<SetTwist-request>"
  "3a27371a87ddb704c39e3f435f403d24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTwist-request)))
  "Returns md5sum for a message object of type 'SetTwist-request"
  "3a27371a87ddb704c39e3f435f403d24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTwist-request>)))
  "Returns full string definition for message of type '<SetTwist-request>"
  (cl:format cl:nil "geometry_msgs/Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTwist-request)))
  "Returns full string definition for message of type 'SetTwist-request"
  (cl:format cl:nil "geometry_msgs/Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTwist-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTwist-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTwist-request
    (cl:cons ':twist (twist msg))
))
;//! \htmlinclude SetTwist-response.msg.html

(cl:defclass <SetTwist-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetTwist-response (<SetTwist-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTwist-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTwist-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-srv:<SetTwist-response> is deprecated: use lcr_shared-srv:SetTwist-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetTwist-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-srv:success-val is deprecated.  Use lcr_shared-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTwist-response>) ostream)
  "Serializes a message object of type '<SetTwist-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTwist-response>) istream)
  "Deserializes a message object of type '<SetTwist-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTwist-response>)))
  "Returns string type for a service object of type '<SetTwist-response>"
  "lcr_shared/SetTwistResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTwist-response)))
  "Returns string type for a service object of type 'SetTwist-response"
  "lcr_shared/SetTwistResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTwist-response>)))
  "Returns md5sum for a message object of type '<SetTwist-response>"
  "3a27371a87ddb704c39e3f435f403d24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTwist-response)))
  "Returns md5sum for a message object of type 'SetTwist-response"
  "3a27371a87ddb704c39e3f435f403d24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTwist-response>)))
  "Returns full string definition for message of type '<SetTwist-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTwist-response)))
  "Returns full string definition for message of type 'SetTwist-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTwist-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTwist-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTwist-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTwist)))
  'SetTwist-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTwist)))
  'SetTwist-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTwist)))
  "Returns string type for a service object of type '<SetTwist>"
  "lcr_shared/SetTwist")