# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lcr_shared: 6 messages, 6 services")

set(MSG_I_FLAGS "-Ilcr_shared:/home/lcr/catkin_ws/src/lcr_shared/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lcr_shared_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv" ""
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv" "lcr_shared/VirtualObjectsAndPaths"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg" ""
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv" ""
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv" ""
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg" ""
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg" NAME_WE)
add_custom_target(_lcr_shared_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lcr_shared" "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_msg_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_msg_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_msg_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_msg_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_msg_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)

### Generating Services
_generate_srv_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_srv_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_srv_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_srv_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_srv_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)
_generate_srv_cpp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
)

### Generating Module File
_generate_module_cpp(lcr_shared
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lcr_shared_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lcr_shared_generate_messages lcr_shared_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_cpp _lcr_shared_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcr_shared_gencpp)
add_dependencies(lcr_shared_gencpp lcr_shared_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcr_shared_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_msg_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_msg_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_msg_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_msg_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_msg_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)

### Generating Services
_generate_srv_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_srv_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_srv_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_srv_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_srv_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)
_generate_srv_eus(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
)

### Generating Module File
_generate_module_eus(lcr_shared
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lcr_shared_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lcr_shared_generate_messages lcr_shared_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_eus _lcr_shared_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcr_shared_geneus)
add_dependencies(lcr_shared_geneus lcr_shared_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcr_shared_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_msg_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_msg_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_msg_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_msg_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_msg_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)

### Generating Services
_generate_srv_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_srv_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_srv_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_srv_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_srv_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)
_generate_srv_lisp(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
)

### Generating Module File
_generate_module_lisp(lcr_shared
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lcr_shared_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lcr_shared_generate_messages lcr_shared_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_lisp _lcr_shared_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcr_shared_genlisp)
add_dependencies(lcr_shared_genlisp lcr_shared_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcr_shared_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_msg_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_msg_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_msg_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_msg_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_msg_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)

### Generating Services
_generate_srv_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_srv_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_srv_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_srv_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_srv_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)
_generate_srv_nodejs(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
)

### Generating Module File
_generate_module_nodejs(lcr_shared
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lcr_shared_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lcr_shared_generate_messages lcr_shared_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_nodejs _lcr_shared_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcr_shared_gennodejs)
add_dependencies(lcr_shared_gennodejs lcr_shared_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcr_shared_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_msg_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_msg_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_msg_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_msg_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_msg_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)

### Generating Services
_generate_srv_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_srv_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_srv_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_srv_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_srv_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)
_generate_srv_py(lcr_shared
  "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
)

### Generating Module File
_generate_module_py(lcr_shared
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lcr_shared_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lcr_shared_generate_messages lcr_shared_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetString.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/database.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/wcs_status.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/VirtualObjectsAndPaths.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRStatus.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/Elevator.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetTwist.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetInt32.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/srv/SetPose.srv" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRtagSaver.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/lcr_shared/msg/LCRError.msg" NAME_WE)
add_dependencies(lcr_shared_generate_messages_py _lcr_shared_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lcr_shared_genpy)
add_dependencies(lcr_shared_genpy lcr_shared_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lcr_shared_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lcr_shared
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lcr_shared_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lcr_shared_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lcr_shared
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lcr_shared_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lcr_shared_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lcr_shared
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lcr_shared_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lcr_shared_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lcr_shared
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lcr_shared_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lcr_shared_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lcr_shared
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lcr_shared_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lcr_shared_generate_messages_py geometry_msgs_generate_messages_py)
endif()
