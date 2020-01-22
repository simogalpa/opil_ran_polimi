; Auto-generated. Do not edit!


(cl:in-package lcr_shared-msg)


;//! \htmlinclude LCRtagSaver.msg.html

(cl:defclass <LCRtagSaver> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass LCRtagSaver (<LCRtagSaver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LCRtagSaver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LCRtagSaver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcr_shared-msg:<LCRtagSaver> is deprecated: use lcr_shared-msg:LCRtagSaver instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LCRtagSaver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:type-val is deprecated.  Use lcr_shared-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LCRtagSaver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcr_shared-msg:id-val is deprecated.  Use lcr_shared-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LCRtagSaver>) ostream)
  "Serializes a message object of type '<LCRtagSaver>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LCRtagSaver>) istream)
  "Deserializes a message object of type '<LCRtagSaver>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LCRtagSaver>)))
  "Returns string type for a message object of type '<LCRtagSaver>"
  "lcr_shared/LCRtagSaver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LCRtagSaver)))
  "Returns string type for a message object of type 'LCRtagSaver"
  "lcr_shared/LCRtagSaver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LCRtagSaver>)))
  "Returns md5sum for a message object of type '<LCRtagSaver>"
  "bb7d931af6cd060b0953169ea5e1f692")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LCRtagSaver)))
  "Returns md5sum for a message object of type 'LCRtagSaver"
  "bb7d931af6cd060b0953169ea5e1f692")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LCRtagSaver>)))
  "Returns full string definition for message of type '<LCRtagSaver>"
  (cl:format cl:nil "string type~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LCRtagSaver)))
  "Returns full string definition for message of type 'LCRtagSaver"
  (cl:format cl:nil "string type~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LCRtagSaver>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LCRtagSaver>))
  "Converts a ROS message object to a list"
  (cl:list 'LCRtagSaver
    (cl:cons ':type (type msg))
    (cl:cons ':id (id msg))
))
