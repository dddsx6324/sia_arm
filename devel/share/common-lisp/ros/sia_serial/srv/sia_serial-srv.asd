
(cl:in-package :asdf)

(defsystem "sia_serial-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "EeDelta" :depends-on ("_package_EeDelta"))
    (:file "_package_EeDelta" :depends-on ("_package"))
    (:file "EePose" :depends-on ("_package_EePose"))
    (:file "_package_EePose" :depends-on ("_package"))
    (:file "EeRPY" :depends-on ("_package_EeRPY"))
    (:file "_package_EeRPY" :depends-on ("_package"))
    (:file "EeTraj" :depends-on ("_package_EeTraj"))
    (:file "_package_EeTraj" :depends-on ("_package"))
    (:file "JointTraj" :depends-on ("_package_JointTraj"))
    (:file "_package_JointTraj" :depends-on ("_package"))
  ))