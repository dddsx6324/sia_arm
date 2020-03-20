# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sia_serial: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sia_serial_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv" NAME_WE)
add_custom_target(_sia_serial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sia_serial" "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv" ""
)

get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv" NAME_WE)
add_custom_target(_sia_serial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sia_serial" "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv" NAME_WE)
add_custom_target(_sia_serial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sia_serial" "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv" NAME_WE)
add_custom_target(_sia_serial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sia_serial" "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv" NAME_WE)
add_custom_target(_sia_serial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sia_serial" "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sia_serial
)
_generate_srv_cpp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sia_serial
)
_generate_srv_cpp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sia_serial
)
_generate_srv_cpp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sia_serial
)
_generate_srv_cpp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sia_serial
)

### Generating Module File
_generate_module_cpp(sia_serial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sia_serial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sia_serial_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sia_serial_generate_messages sia_serial_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_cpp _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_cpp _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_cpp _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_cpp _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_cpp _sia_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sia_serial_gencpp)
add_dependencies(sia_serial_gencpp sia_serial_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sia_serial_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sia_serial
)
_generate_srv_eus(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sia_serial
)
_generate_srv_eus(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sia_serial
)
_generate_srv_eus(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sia_serial
)
_generate_srv_eus(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sia_serial
)

### Generating Module File
_generate_module_eus(sia_serial
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sia_serial
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sia_serial_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sia_serial_generate_messages sia_serial_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_eus _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_eus _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_eus _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_eus _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_eus _sia_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sia_serial_geneus)
add_dependencies(sia_serial_geneus sia_serial_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sia_serial_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sia_serial
)
_generate_srv_lisp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sia_serial
)
_generate_srv_lisp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sia_serial
)
_generate_srv_lisp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sia_serial
)
_generate_srv_lisp(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sia_serial
)

### Generating Module File
_generate_module_lisp(sia_serial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sia_serial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sia_serial_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sia_serial_generate_messages sia_serial_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_lisp _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_lisp _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_lisp _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_lisp _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_lisp _sia_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sia_serial_genlisp)
add_dependencies(sia_serial_genlisp sia_serial_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sia_serial_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sia_serial
)
_generate_srv_nodejs(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sia_serial
)
_generate_srv_nodejs(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sia_serial
)
_generate_srv_nodejs(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sia_serial
)
_generate_srv_nodejs(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sia_serial
)

### Generating Module File
_generate_module_nodejs(sia_serial
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sia_serial
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sia_serial_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sia_serial_generate_messages sia_serial_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_nodejs _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_nodejs _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_nodejs _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_nodejs _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_nodejs _sia_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sia_serial_gennodejs)
add_dependencies(sia_serial_gennodejs sia_serial_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sia_serial_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sia_serial
)
_generate_srv_py(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sia_serial
)
_generate_srv_py(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sia_serial
)
_generate_srv_py(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sia_serial
)
_generate_srv_py(sia_serial
  "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sia_serial
)

### Generating Module File
_generate_module_py(sia_serial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sia_serial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sia_serial_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sia_serial_generate_messages sia_serial_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeRPY.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_py _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_py _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/JointTraj.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_py _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EePose.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_py _sia_serial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zzy/sia_arm/src/sia_serial/srv/EeDelta.srv" NAME_WE)
add_dependencies(sia_serial_generate_messages_py _sia_serial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sia_serial_genpy)
add_dependencies(sia_serial_genpy sia_serial_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sia_serial_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sia_serial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sia_serial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sia_serial_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sia_serial_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(sia_serial_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sia_serial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sia_serial
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sia_serial_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sia_serial_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(sia_serial_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sia_serial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sia_serial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sia_serial_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sia_serial_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(sia_serial_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sia_serial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sia_serial
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sia_serial_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sia_serial_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(sia_serial_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sia_serial)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sia_serial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sia_serial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sia_serial_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sia_serial_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(sia_serial_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
