; Auto-generated. Do not edit!


(cl:in-package opil_v2-msg)


;//! \htmlinclude Id.msg.html

(cl:defclass <Id> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass Id (<Id>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Id>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Id)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opil_v2-msg:<Id> is deprecated: use opil_v2-msg:Id instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:id-val is deprecated.  Use opil_v2-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opil_v2-msg:description-val is deprecated.  Use opil_v2-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Id>) ostream)
  "Serializes a message object of type '<Id>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Id>) istream)
  "Deserializes a message object of type '<Id>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Id>)))
  "Returns string type for a message object of type '<Id>"
  "opil_v2/Id")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Id)))
  "Returns string type for a message object of type 'Id"
  "opil_v2/Id")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Id>)))
  "Returns md5sum for a message object of type '<Id>"
  "e72fe1424d4b17851cf50f38f76c080e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Id)))
  "Returns md5sum for a message object of type 'Id"
  "e72fe1424d4b17851cf50f38f76c080e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Id>)))
  "Returns full string definition for message of type '<Id>"
  (cl:format cl:nil "# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Id)))
  "Returns full string definition for message of type 'Id"
  (cl:format cl:nil "# Message for defining IDs~%# numeric ID~%uint32 id~%~%# optional description of the id~%# description can be:~%#   - a name~%#   - what is descriped by the id~%#   - etc.~%~%string description~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Id>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Id>))
  "Converts a ROS message object to a list"
  (cl:list 'Id
    (cl:cons ':id (id msg))
    (cl:cons ':description (description msg))
))
