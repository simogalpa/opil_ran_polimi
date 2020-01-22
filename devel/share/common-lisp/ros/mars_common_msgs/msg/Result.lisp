; Auto-generated. Do not edit!


(cl:in-package mars_common_msgs-msg)


;//! \htmlinclude Result.msg.html

(cl:defclass <Result> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass Result (<Result>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Result>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Result)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mars_common_msgs-msg:<Result> is deprecated: use mars_common_msgs-msg:Result instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_common_msgs-msg:result-val is deprecated.  Use mars_common_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_common_msgs-msg:description-val is deprecated.  Use mars_common_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Result>)))
    "Constants for message type '<Result>"
  '((:RESULT_ERROR . -1)
    (:RESULT_SUCCESS . 0)
    (:RESULT_SUCCESS_ADDITIONAL_INFO . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Result)))
    "Constants for message type 'Result"
  '((:RESULT_ERROR . -1)
    (:RESULT_SUCCESS . 0)
    (:RESULT_SUCCESS_ADDITIONAL_INFO . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Result>) ostream)
  "Serializes a message object of type '<Result>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Result>) istream)
  "Deserializes a message object of type '<Result>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Result>)))
  "Returns string type for a message object of type '<Result>"
  "mars_common_msgs/Result")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Result)))
  "Returns string type for a message object of type 'Result"
  "mars_common_msgs/Result")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Result>)))
  "Returns md5sum for a message object of type '<Result>"
  "fca73f6d4e444c1fbc287204cabcd88b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Result)))
  "Returns md5sum for a message object of type 'Result"
  "fca73f6d4e444c1fbc287204cabcd88b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Result>)))
  "Returns full string definition for message of type '<Result>"
  (cl:format cl:nil "# Definition of possible results~%# In general:~%# - a result less zero represents an error~%# - a result equal to zero represents~%# - a result greater zero represents~%~%# < 0: Error with further information~%int8 RESULT_ERROR=-1~%~%# == 0: Success~%int8 RESULT_SUCCESS=0~%~%# > 0: Success with additional information~%int8 RESULT_SUCCESS_ADDITIONAL_INFO=1~%~%int8 result~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Result)))
  "Returns full string definition for message of type 'Result"
  (cl:format cl:nil "# Definition of possible results~%# In general:~%# - a result less zero represents an error~%# - a result equal to zero represents~%# - a result greater zero represents~%~%# < 0: Error with further information~%int8 RESULT_ERROR=-1~%~%# == 0: Success~%int8 RESULT_SUCCESS=0~%~%# > 0: Success with additional information~%int8 RESULT_SUCCESS_ADDITIONAL_INFO=1~%~%int8 result~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Result>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Result>))
  "Converts a ROS message object to a list"
  (cl:list 'Result
    (cl:cons ':result (result msg))
    (cl:cons ':description (description msg))
))
