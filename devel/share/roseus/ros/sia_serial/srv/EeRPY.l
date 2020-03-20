;; Auto-generated. Do not edit!


(when (boundp 'sia_serial::EeRPY)
  (if (not (find-package "SIA_SERIAL"))
    (make-package "SIA_SERIAL"))
  (shadow 'EeRPY (find-package "SIA_SERIAL")))
(unless (find-package "SIA_SERIAL::EERPY")
  (make-package "SIA_SERIAL::EERPY"))
(unless (find-package "SIA_SERIAL::EERPYREQUEST")
  (make-package "SIA_SERIAL::EERPYREQUEST"))
(unless (find-package "SIA_SERIAL::EERPYRESPONSE")
  (make-package "SIA_SERIAL::EERPYRESPONSE"))

(in-package "ROS")





(defclass sia_serial::EeRPYRequest
  :super ros::object
  :slots ())

(defmethod sia_serial::EeRPYRequest
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

(defclass sia_serial::EeRPYResponse
  :super ros::object
  :slots (_r _p _y ))

(defmethod sia_serial::EeRPYResponse
  (:init
   (&key
    ((:r __r) 0.0)
    ((:p __p) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _r (float __r))
   (setq _p (float __p))
   (setq _y (float __y))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _r
    4
    ;; float32 _p
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _p
       (sys::poke _p (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _p
     (setq _p (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sia_serial::EeRPY
  :super ros::object
  :slots ())

(setf (get sia_serial::EeRPY :md5sum-) "cfb6f20560ab4d9cc1d682755cf3b5d4")
(setf (get sia_serial::EeRPY :datatype-) "sia_serial/EeRPY")
(setf (get sia_serial::EeRPY :request) sia_serial::EeRPYRequest)
(setf (get sia_serial::EeRPY :response) sia_serial::EeRPYResponse)

(defmethod sia_serial::EeRPYRequest
  (:response () (instance sia_serial::EeRPYResponse :init)))

(setf (get sia_serial::EeRPYRequest :md5sum-) "cfb6f20560ab4d9cc1d682755cf3b5d4")
(setf (get sia_serial::EeRPYRequest :datatype-) "sia_serial/EeRPYRequest")
(setf (get sia_serial::EeRPYRequest :definition-)
      "
---
float32 r
float32 p
float32 y
")

(setf (get sia_serial::EeRPYResponse :md5sum-) "cfb6f20560ab4d9cc1d682755cf3b5d4")
(setf (get sia_serial::EeRPYResponse :datatype-) "sia_serial/EeRPYResponse")
(setf (get sia_serial::EeRPYResponse :definition-)
      "
---
float32 r
float32 p
float32 y
")



(provide :sia_serial/EeRPY "cfb6f20560ab4d9cc1d682755cf3b5d4")


