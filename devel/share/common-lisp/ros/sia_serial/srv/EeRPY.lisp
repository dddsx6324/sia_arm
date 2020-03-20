; Auto-generated. Do not edit!


(cl:in-package sia_serial-srv)


;//! \htmlinclude EeRPY-request.msg.html

(cl:defclass <EeRPY-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EeRPY-request (<EeRPY-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EeRPY-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EeRPY-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sia_serial-srv:<EeRPY-request> is deprecated: use sia_serial-srv:EeRPY-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EeRPY-request>) ostream)
  "Serializes a message object of type '<EeRPY-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EeRPY-request>) istream)
  "Deserializes a message object of type '<EeRPY-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EeRPY-request>)))
  "Returns string type for a service object of type '<EeRPY-request>"
  "sia_serial/EeRPYRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeRPY-request)))
  "Returns string type for a service object of type 'EeRPY-request"
  "sia_serial/EeRPYRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EeRPY-request>)))
  "Returns md5sum for a message object of type '<EeRPY-request>"
  "cfb6f20560ab4d9cc1d682755cf3b5d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EeRPY-request)))
  "Returns md5sum for a message object of type 'EeRPY-request"
  "cfb6f20560ab4d9cc1d682755cf3b5d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EeRPY-request>)))
  "Returns full string definition for message of type '<EeRPY-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EeRPY-request)))
  "Returns full string definition for message of type 'EeRPY-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EeRPY-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EeRPY-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EeRPY-request
))
;//! \htmlinclude EeRPY-response.msg.html

(cl:defclass <EeRPY-response> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (p
    :reader p
    :initarg :p
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass EeRPY-response (<EeRPY-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EeRPY-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EeRPY-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sia_serial-srv:<EeRPY-response> is deprecated: use sia_serial-srv:EeRPY-response instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <EeRPY-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:r-val is deprecated.  Use sia_serial-srv:r instead.")
  (r m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <EeRPY-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:p-val is deprecated.  Use sia_serial-srv:p instead.")
  (p m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <EeRPY-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:y-val is deprecated.  Use sia_serial-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EeRPY-response>) ostream)
  "Serializes a message object of type '<EeRPY-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EeRPY-response>) istream)
  "Deserializes a message object of type '<EeRPY-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EeRPY-response>)))
  "Returns string type for a service object of type '<EeRPY-response>"
  "sia_serial/EeRPYResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeRPY-response)))
  "Returns string type for a service object of type 'EeRPY-response"
  "sia_serial/EeRPYResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EeRPY-response>)))
  "Returns md5sum for a message object of type '<EeRPY-response>"
  "cfb6f20560ab4d9cc1d682755cf3b5d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EeRPY-response)))
  "Returns md5sum for a message object of type 'EeRPY-response"
  "cfb6f20560ab4d9cc1d682755cf3b5d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EeRPY-response>)))
  "Returns full string definition for message of type '<EeRPY-response>"
  (cl:format cl:nil "float32 r~%float32 p~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EeRPY-response)))
  "Returns full string definition for message of type 'EeRPY-response"
  (cl:format cl:nil "float32 r~%float32 p~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EeRPY-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EeRPY-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EeRPY-response
    (cl:cons ':r (r msg))
    (cl:cons ':p (p msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EeRPY)))
  'EeRPY-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EeRPY)))
  'EeRPY-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeRPY)))
  "Returns string type for a service object of type '<EeRPY>"
  "sia_serial/EeRPY")