; Auto-generated. Do not edit!


(cl:in-package sia_serial-srv)


;//! \htmlinclude EeDelta-request.msg.html

(cl:defclass <EeDelta-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass EeDelta-request (<EeDelta-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EeDelta-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EeDelta-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sia_serial-srv:<EeDelta-request> is deprecated: use sia_serial-srv:EeDelta-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <EeDelta-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:pose-val is deprecated.  Use sia_serial-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EeDelta-request>) ostream)
  "Serializes a message object of type '<EeDelta-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EeDelta-request>) istream)
  "Deserializes a message object of type '<EeDelta-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EeDelta-request>)))
  "Returns string type for a service object of type '<EeDelta-request>"
  "sia_serial/EeDeltaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeDelta-request)))
  "Returns string type for a service object of type 'EeDelta-request"
  "sia_serial/EeDeltaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EeDelta-request>)))
  "Returns md5sum for a message object of type '<EeDelta-request>"
  "28e4dd667b29bd35b516ba1d379b7529")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EeDelta-request)))
  "Returns md5sum for a message object of type 'EeDelta-request"
  "28e4dd667b29bd35b516ba1d379b7529")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EeDelta-request>)))
  "Returns full string definition for message of type '<EeDelta-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EeDelta-request)))
  "Returns full string definition for message of type 'EeDelta-request"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EeDelta-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EeDelta-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EeDelta-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude EeDelta-response.msg.html

(cl:defclass <EeDelta-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass EeDelta-response (<EeDelta-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EeDelta-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EeDelta-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sia_serial-srv:<EeDelta-response> is deprecated: use sia_serial-srv:EeDelta-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <EeDelta-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:success-val is deprecated.  Use sia_serial-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EeDelta-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:message-val is deprecated.  Use sia_serial-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EeDelta-response>) ostream)
  "Serializes a message object of type '<EeDelta-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EeDelta-response>) istream)
  "Deserializes a message object of type '<EeDelta-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EeDelta-response>)))
  "Returns string type for a service object of type '<EeDelta-response>"
  "sia_serial/EeDeltaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeDelta-response)))
  "Returns string type for a service object of type 'EeDelta-response"
  "sia_serial/EeDeltaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EeDelta-response>)))
  "Returns md5sum for a message object of type '<EeDelta-response>"
  "28e4dd667b29bd35b516ba1d379b7529")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EeDelta-response)))
  "Returns md5sum for a message object of type 'EeDelta-response"
  "28e4dd667b29bd35b516ba1d379b7529")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EeDelta-response>)))
  "Returns full string definition for message of type '<EeDelta-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EeDelta-response)))
  "Returns full string definition for message of type 'EeDelta-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EeDelta-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EeDelta-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EeDelta-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EeDelta)))
  'EeDelta-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EeDelta)))
  'EeDelta-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeDelta)))
  "Returns string type for a service object of type '<EeDelta>"
  "sia_serial/EeDelta")