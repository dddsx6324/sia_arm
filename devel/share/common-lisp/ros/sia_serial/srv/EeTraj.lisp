; Auto-generated. Do not edit!


(cl:in-package sia_serial-srv)


;//! \htmlinclude EeTraj-request.msg.html

(cl:defclass <EeTraj-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass EeTraj-request (<EeTraj-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EeTraj-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EeTraj-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sia_serial-srv:<EeTraj-request> is deprecated: use sia_serial-srv:EeTraj-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <EeTraj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:pose-val is deprecated.  Use sia_serial-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EeTraj-request>) ostream)
  "Serializes a message object of type '<EeTraj-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EeTraj-request>) istream)
  "Deserializes a message object of type '<EeTraj-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EeTraj-request>)))
  "Returns string type for a service object of type '<EeTraj-request>"
  "sia_serial/EeTrajRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeTraj-request)))
  "Returns string type for a service object of type 'EeTraj-request"
  "sia_serial/EeTrajRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EeTraj-request>)))
  "Returns md5sum for a message object of type '<EeTraj-request>"
  "28e4dd667b29bd35b516ba1d379b7529")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EeTraj-request)))
  "Returns md5sum for a message object of type 'EeTraj-request"
  "28e4dd667b29bd35b516ba1d379b7529")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EeTraj-request>)))
  "Returns full string definition for message of type '<EeTraj-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EeTraj-request)))
  "Returns full string definition for message of type 'EeTraj-request"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EeTraj-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EeTraj-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EeTraj-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude EeTraj-response.msg.html

(cl:defclass <EeTraj-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass EeTraj-response (<EeTraj-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EeTraj-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EeTraj-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sia_serial-srv:<EeTraj-response> is deprecated: use sia_serial-srv:EeTraj-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <EeTraj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:success-val is deprecated.  Use sia_serial-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EeTraj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:message-val is deprecated.  Use sia_serial-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EeTraj-response>) ostream)
  "Serializes a message object of type '<EeTraj-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EeTraj-response>) istream)
  "Deserializes a message object of type '<EeTraj-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EeTraj-response>)))
  "Returns string type for a service object of type '<EeTraj-response>"
  "sia_serial/EeTrajResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeTraj-response)))
  "Returns string type for a service object of type 'EeTraj-response"
  "sia_serial/EeTrajResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EeTraj-response>)))
  "Returns md5sum for a message object of type '<EeTraj-response>"
  "28e4dd667b29bd35b516ba1d379b7529")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EeTraj-response)))
  "Returns md5sum for a message object of type 'EeTraj-response"
  "28e4dd667b29bd35b516ba1d379b7529")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EeTraj-response>)))
  "Returns full string definition for message of type '<EeTraj-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EeTraj-response)))
  "Returns full string definition for message of type 'EeTraj-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EeTraj-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EeTraj-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EeTraj-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EeTraj)))
  'EeTraj-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EeTraj)))
  'EeTraj-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeTraj)))
  "Returns string type for a service object of type '<EeTraj>"
  "sia_serial/EeTraj")