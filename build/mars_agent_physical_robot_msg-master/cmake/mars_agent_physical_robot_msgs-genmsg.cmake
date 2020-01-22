# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mars_agent_physical_robot_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Imars_agent_physical_robot_msgs:/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iindustrial_msgs:/opt/ros/kinetic/share/industrial_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Imars_common_msgs:/home/lcr/catkin_ws/src/mars_common_msgs-master/msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mars_agent_physical_robot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg" ""
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg" ""
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg" "geometry_msgs/Accel:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Point32:geometry_msgs/Vector3:mars_agent_physical_robot_msgs/Sequence:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:geometry_msgs/Pose2D:mars_common_msgs/Id"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg" "geometry_msgs/PoseStamped:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:mars_common_msgs/Id"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg" "mars_common_msgs/Id:std_msgs/Header"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg" "mars_agent_physical_robot_msgs/Sequence:mars_agent_physical_robot_msgs/RobotAction:mars_common_msgs/Tuple:mars_common_msgs/Id"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg" "mars_common_msgs/Id"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg" "mars_agent_physical_robot_msgs/RobotAction:std_msgs/Header:mars_agent_physical_robot_msgs/VehicleType:geometry_msgs/Point32:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:mars_common_msgs/Tuple:mars_common_msgs/Id"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg" "mars_common_msgs/Tuple"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg" NAME_WE)
add_custom_target(_mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_agent_physical_robot_msgs" "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg" "geometry_msgs/PolygonStamped:geometry_msgs/Point32:mars_common_msgs/Id:std_msgs/Header:geometry_msgs/Polygon"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_cpp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(mars_agent_physical_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mars_agent_physical_robot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages mars_agent_physical_robot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_agent_physical_robot_msgs_gencpp)
add_dependencies(mars_agent_physical_robot_msgs_gencpp mars_agent_physical_robot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_agent_physical_robot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_eus(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(mars_agent_physical_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mars_agent_physical_robot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages mars_agent_physical_robot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_agent_physical_robot_msgs_geneus)
add_dependencies(mars_agent_physical_robot_msgs_geneus mars_agent_physical_robot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_agent_physical_robot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_lisp(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(mars_agent_physical_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mars_agent_physical_robot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages mars_agent_physical_robot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_agent_physical_robot_msgs_genlisp)
add_dependencies(mars_agent_physical_robot_msgs_genlisp mars_agent_physical_robot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_agent_physical_robot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_nodejs(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mars_agent_physical_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mars_agent_physical_robot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages mars_agent_physical_robot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_agent_physical_robot_msgs_gennodejs)
add_dependencies(mars_agent_physical_robot_msgs_gennodejs mars_agent_physical_robot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_agent_physical_robot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)
_generate_msg_py(mars_agent_physical_robot_msgs
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(mars_agent_physical_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mars_agent_physical_robot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages mars_agent_physical_robot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg" NAME_WE)
add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py _mars_agent_physical_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_agent_physical_robot_msgs_genpy)
add_dependencies(mars_agent_physical_robot_msgs_genpy mars_agent_physical_robot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_agent_physical_robot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_agent_physical_robot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET industrial_msgs_generate_messages_cpp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp industrial_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET mars_common_msgs_generate_messages_cpp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_cpp mars_common_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_agent_physical_robot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET industrial_msgs_generate_messages_eus)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus industrial_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET mars_common_msgs_generate_messages_eus)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_eus mars_common_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_agent_physical_robot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET industrial_msgs_generate_messages_lisp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp industrial_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET mars_common_msgs_generate_messages_lisp)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_lisp mars_common_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_agent_physical_robot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET industrial_msgs_generate_messages_nodejs)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs industrial_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET mars_common_msgs_generate_messages_nodejs)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_nodejs mars_common_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_agent_physical_robot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET industrial_msgs_generate_messages_py)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py industrial_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET mars_common_msgs_generate_messages_py)
  add_dependencies(mars_agent_physical_robot_msgs_generate_messages_py mars_common_msgs_generate_messages_py)
endif()
