;; Auto-generated. Do not edit!


(when (boundp 'sia_serial::JointTraj)
  (if (not (find-package "SIA_SERIAL"))
    (make-package "SIA_SERIAL"))
  (shadow 'JointTraj (find-package "SIA_SERIAL")))
(unless (find-package "SIA_SERIAL::JOINTTRAJ")
  (make-package "SIA_SERIAL::JOINTTRAJ"))
(unless (find-package "SIA_SERIAL::JOINTTRAJREQUEST")
  (make-package "SIA_SERIAL::JOINTTRAJREQUEST"))
(unless (find-package "SIA_SERIAL::JOINTTRAJRESPONSE")
  (make-package "SIA_SERIAL::JOINTTRAJRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(defclass sia_serial::JointTrajRequest
  :super ros::object
  :slots (_point ))

(defmethod sia_serial::JointTrajRequest
  (:init
   (&key
    ((:point __point) (instance trajectory_msgs::JointTrajectoryPoint :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectoryPoint _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectoryPoint _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectoryPoint _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass sia_serial::JointTrajResponse
  :super ros::object
  :slots (_success _message ))

(defmethod sia_serial::JointTrajResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sia_serial::JointTraj
  :super ros::object
  :slots ())

(setf (get sia_serial::JointTraj :md5sum-) "3fc8a9e27b55b9b20a2c846f9e053a5c")
(setf (get sia_serial::JointTraj :datatype-) "sia_serial/JointTraj")
(setf (get sia_serial::JointTraj :request) sia_serial::JointTrajRequest)
(setf (get sia_serial::JointTraj :response) sia_serial::JointTrajResponse)

(defmethod sia_serial::JointTrajRequest
  (:response () (instance sia_serial::JointTrajResponse :init)))

(setf (get sia_serial::JointTrajRequest :md5sum-) "3fc8a9e27b55b9b20a2c846f9e053a5c")
(setf (get sia_serial::JointTrajRequest :datatype-) "sia_serial/JointTrajRequest")
(setf (get sia_serial::JointTrajRequest :definition-)
      "trajectory_msgs/JointTrajectoryPoint point

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
bool success
string message
")

(setf (get sia_serial::JointTrajResponse :md5sum-) "3fc8a9e27b55b9b20a2c846f9e053a5c")
(setf (get sia_serial::JointTrajResponse :datatype-) "sia_serial/JointTrajResponse")
(setf (get sia_serial::JointTrajResponse :definition-)
      "trajectory_msgs/JointTrajectoryPoint point

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
bool success
string message
")



(provide :sia_serial/JointTraj "3fc8a9e27b55b9b20a2c846f9e053a5c")


