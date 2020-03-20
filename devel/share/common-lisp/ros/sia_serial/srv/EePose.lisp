; Auto-generated. Do not edit!


(cl:in-package sia_serial-srv)


;//! \htmlinclude EePose-request.msg.html

(cl:defclass <EePose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EePose-request (<EePose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EePose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EePose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sia_serial-srv:<EePose-request> is deprecated: use sia_serial-srv:EePose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EePose-request>) ostream)
  "Serializes a message object of type '<EePose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EePose-request>) istream)
  "Deserializes a message object of type '<EePose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EePose-request>)))
  "Returns string type for a service object of type '<EePose-request>"
  "sia_serial/EePoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EePose-request)))
  "Returns string type for a service object of type 'EePose-request"
  "sia_serial/EePoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EePose-request>)))
  "Returns md5sum for a message object of type '<EePose-request>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EePose-request)))
  "Returns md5sum for a message object of type 'EePose-request"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EePose-request>)))
  "Returns full string definition for message of type '<EePose-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EePose-request)))
  "Returns full string definition for message of type 'EePose-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EePose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EePose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EePose-request
))
;//! \htmlinclude EePose-response.msg.html

(cl:defclass <EePose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass EePose-response (<EePose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EePose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EePose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sia_serial-srv:<EePose-response> is deprecated: use sia_serial-srv:EePose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <EePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sia_serial-srv:pose-val is deprecated.  Use sia_serial-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EePose-response>) ostream)
  "Serializes a message object of type '<EePose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EePose-response>) istream)
  "Deserializes a message object of type '<EePose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EePose-response>)))
  "Returns string type for a service object of type '<EePose-response>"
  "sia_serial/EePoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EePose-response)))
  "Returns string type for a service object of type 'EePose-response"
  "sia_serial/EePoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EePose-response>)))
  "Returns md5sum for a message object of type '<EePose-response>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EePose-response)))
  "Returns md5sum for a message object of type 'EePose-response"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EePose-response>)))
  "Returns full string definition for message of type '<EePose-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EePose-response)))
  "Returns full string definition for message of type 'EePose-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EePose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EePose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EePose-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EePose)))
  'EePose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EePose)))
  'EePose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EePose)))
  "Returns string type for a service object of type '<EePose>"
  "sia_serial/EePose")