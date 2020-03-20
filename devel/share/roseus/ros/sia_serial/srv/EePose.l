;; Auto-generated. Do not edit!


(when (boundp 'sia_serial::EePose)
  (if (not (find-package "SIA_SERIAL"))
    (make-package "SIA_SERIAL"))
  (shadow 'EePose (find-package "SIA_SERIAL")))
(unless (find-package "SIA_SERIAL::EEPOSE")
  (make-package "SIA_SERIAL::EEPOSE"))
(unless (find-package "SIA_SERIAL::EEPOSEREQUEST")
  (make-package "SIA_SERIAL::EEPOSEREQUEST"))
(unless (find-package "SIA_SERIAL::EEPOSERESPONSE")
  (make-package "SIA_SERIAL::EEPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass sia_serial::EePoseRequest
  :super ros::object
  :slots ())

(defmethod sia_serial::EePoseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sia_serial::EePoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod sia_serial::EePoseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass sia_serial::EePose
  :super ros::object
  :slots ())

(setf (get sia_serial::EePose :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get sia_serial::EePose :datatype-) "sia_serial/EePose")
(setf (get sia_serial::EePose :request) sia_serial::EePoseRequest)
(setf (get sia_serial::EePose :response) sia_serial::EePoseResponse)

(defmethod sia_serial::EePoseRequest
  (:response () (instance sia_serial::EePoseResponse :init)))

(setf (get sia_serial::EePoseRequest :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get sia_serial::EePoseRequest :datatype-) "sia_serial/EePoseRequest")
(setf (get sia_serial::EePoseRequest :definition-)
      "---
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get sia_serial::EePoseResponse :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get sia_serial::EePoseResponse :datatype-) "sia_serial/EePoseResponse")
(setf (get sia_serial::EePoseResponse :definition-)
      "---
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :sia_serial/EePose "f192399f711a48924df9a394d37edd67")


