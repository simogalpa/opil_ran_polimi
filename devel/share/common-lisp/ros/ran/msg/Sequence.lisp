; Auto-generated. Do not edit!


(cl:in-package ran-msg)


;//! \htmlinclude Sequence.msg.html

(cl:defclass <Sequence> (roslisp-msg-protocol:ros-message)
  ((sequence_number
    :reader sequence_number
    :initarg :sequence_number
    :type cl:integer
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0))
)

(cl:defclass Sequence (<Sequence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sequence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sequence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ran-msg:<Sequence> is deprecated: use ran-msg:Sequence instead.")))

(cl:ensure-generic-function 'sequence_number-val :lambda-list '(m))
(cl:defmethod sequence_number-val ((m <Sequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ran-msg:sequence_number-val is deprecated.  Use ran-msg:sequence_number instead.")
  (sequence_number m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Sequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ran-msg:length-val is deprecated.  Use ran-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sequence>) ostream)
  "Serializes a message object of type '<Sequence>"
  (cl:let* ((signed (cl:slot-value msg 'sequence_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sequence>) istream)
  "Deserializes a message object of type '<Sequence>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sequence_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sequence>)))
  "Returns string type for a message object of type '<Sequence>"
  "ran/Sequence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sequence)))
  "Returns string type for a message object of type 'Sequence"
  "ran/Sequence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sequence>)))
  "Returns md5sum for a message object of type '<Sequence>"
  "2a41f13649a83eba6bc20a688c3cb1f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sequence)))
  "Returns md5sum for a message object of type 'Sequence"
  "2a41f13649a83eba6bc20a688c3cb1f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sequence>)))
  "Returns full string definition for message of type '<Sequence>"
  (cl:format cl:nil "# Message for defining a sequence~%# actual position in the sequence~%int32 sequence_number~%# overall lenght of the sequence~%int32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sequence)))
  "Returns full string definition for message of type 'Sequence"
  (cl:format cl:nil "# Message for defining a sequence~%# actual position in the sequence~%int32 sequence_number~%# overall lenght of the sequence~%int32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sequence>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sequence>))
  "Converts a ROS message object to a list"
  (cl:list 'Sequence
    (cl:cons ':sequence_number (sequence_number msg))
    (cl:cons ':length (length msg))
))
