# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "RAN: 9 messages, 1 services")

set(MSG_I_FLAGS "-IRAN:/home/lcr/catkin_ws/src/RAN/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iindustrial_msgs:/opt/ros/kinetic/share/industrial_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Imars_common_msgs:/home/lcr/catkin_ws/src/mars_common_msgs-master/msg;-Imars_agent_physical_robot_msgs:/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg;-Isim_msgs:/home/lcr/catkin_ws/src/sim_msgs/msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(RAN_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg" NAME_WE)
add_custom_target(_RAN_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "RAN" "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg" "mars_common_msgs/Id"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg" NAME_WE)
add_custom_target(_RAN_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "RAN" "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg" "industrial_msgs/RobotStatus:RAN/AssignmentId:geometry_msgs/Twist:std_msgs/Header:sensor_msgs/BatteryState:geometry_msgs/Point32:geometry_msgs/Vector3:industrial_msgs/RobotMode:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:RAN/RobotState:geometry_msgs/Pose2D:mars_common_msgs/Id:industrial_msgs/TriState"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg" NAME_WE)
add_custom_target(_RAN_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "RAN" "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg" "mars_common_msgs/Id:std_msgs/Header"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv" NAME_WE)
add_custom_target(_RAN_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "RAN" "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv" ""
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg" NAME_WE)
add_custom_target(_RAN_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "RAN" "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg" "mars_agent_physical_robot_msgs/RobotAction:mars_common_msgs/Tuple:mars_common_msgs/Id:std_msgs/Header"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg" NAME_WE)
add_custom_target(_RAN_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "RAN" "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg" "mars_agent_physical_robot_msgs/RobotAction:mars_common_msgs/Tuple"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg" NAME_WE)
add_custom_target(_RAN_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "RAN" "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg" NAME_WE)
add_custom_target(_RAN_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "RAN" "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg" "industrial_msgs/RobotStatus:RAN/AssignmentId:geometry_msgs/Twist:std_msgs/Header:sensor_msgs/BatteryState:geometry_msgs/Point32:geometry_msgs/Vector3:industrial_msgs/RobotMode:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:geometry_msgs/Pose2D:mars_common_msgs/Id:industrial_msgs/TriState"
)

get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg" NAME_WE)
add_custom_target(_RAN_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "RAN" "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg" "mars_common_msgs/Id"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
)
_generate_msg_cpp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
)
_generate_msg_cpp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
)
_generate_msg_cpp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
)
_generate_msg_cpp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
)
_generate_msg_cpp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
)
_generate_msg_cpp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
)
_generate_msg_cpp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
)

### Generating Services
_generate_srv_cpp(RAN
  "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
)

### Generating Module File
_generate_module_cpp(RAN
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(RAN_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(RAN_generate_messages RAN_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg" NAME_WE)
add_dependencies(RAN_generate_messages_cpp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_cpp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_cpp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv" NAME_WE)
add_dependencies(RAN_generate_messages_cpp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg" NAME_WE)
add_dependencies(RAN_generate_messages_cpp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_cpp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(RAN_generate_messages_cpp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_cpp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg" NAME_WE)
add_dependencies(RAN_generate_messages_cpp _RAN_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(RAN_gencpp)
add_dependencies(RAN_gencpp RAN_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS RAN_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
)
_generate_msg_eus(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
)
_generate_msg_eus(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
)
_generate_msg_eus(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
)
_generate_msg_eus(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
)
_generate_msg_eus(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
)
_generate_msg_eus(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
)
_generate_msg_eus(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
)

### Generating Services
_generate_srv_eus(RAN
  "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
)

### Generating Module File
_generate_module_eus(RAN
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(RAN_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(RAN_generate_messages RAN_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg" NAME_WE)
add_dependencies(RAN_generate_messages_eus _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_eus _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_eus _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv" NAME_WE)
add_dependencies(RAN_generate_messages_eus _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg" NAME_WE)
add_dependencies(RAN_generate_messages_eus _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_eus _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(RAN_generate_messages_eus _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_eus _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg" NAME_WE)
add_dependencies(RAN_generate_messages_eus _RAN_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(RAN_geneus)
add_dependencies(RAN_geneus RAN_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS RAN_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
)
_generate_msg_lisp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
)
_generate_msg_lisp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
)
_generate_msg_lisp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
)
_generate_msg_lisp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
)
_generate_msg_lisp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
)
_generate_msg_lisp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
)
_generate_msg_lisp(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
)

### Generating Services
_generate_srv_lisp(RAN
  "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
)

### Generating Module File
_generate_module_lisp(RAN
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(RAN_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(RAN_generate_messages RAN_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg" NAME_WE)
add_dependencies(RAN_generate_messages_lisp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_lisp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_lisp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv" NAME_WE)
add_dependencies(RAN_generate_messages_lisp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg" NAME_WE)
add_dependencies(RAN_generate_messages_lisp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_lisp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(RAN_generate_messages_lisp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_lisp _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg" NAME_WE)
add_dependencies(RAN_generate_messages_lisp _RAN_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(RAN_genlisp)
add_dependencies(RAN_genlisp RAN_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS RAN_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
)
_generate_msg_nodejs(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
)
_generate_msg_nodejs(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
)
_generate_msg_nodejs(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
)
_generate_msg_nodejs(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
)
_generate_msg_nodejs(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
)
_generate_msg_nodejs(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
)
_generate_msg_nodejs(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
)

### Generating Services
_generate_srv_nodejs(RAN
  "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
)

### Generating Module File
_generate_module_nodejs(RAN
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(RAN_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(RAN_generate_messages RAN_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg" NAME_WE)
add_dependencies(RAN_generate_messages_nodejs _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_nodejs _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_nodejs _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv" NAME_WE)
add_dependencies(RAN_generate_messages_nodejs _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg" NAME_WE)
add_dependencies(RAN_generate_messages_nodejs _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_nodejs _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(RAN_generate_messages_nodejs _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_nodejs _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg" NAME_WE)
add_dependencies(RAN_generate_messages_nodejs _RAN_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(RAN_gennodejs)
add_dependencies(RAN_gennodejs RAN_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS RAN_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
)
_generate_msg_py(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
)
_generate_msg_py(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
)
_generate_msg_py(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
)
_generate_msg_py(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Tuple.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
)
_generate_msg_py(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
)
_generate_msg_py(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotStatus.msg;/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/BatteryState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/RobotMode.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg;/opt/ros/kinetic/share/industrial_msgs/cmake/../msg/TriState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
)
_generate_msg_py(RAN
  "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/home/lcr/catkin_ws/src/mars_common_msgs-master/msg/Id.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
)

### Generating Services
_generate_srv_py(RAN
  "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
)

### Generating Module File
_generate_module_py(RAN
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(RAN_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(RAN_generate_messages RAN_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/AssignmentId.msg" NAME_WE)
add_dependencies(RAN_generate_messages_py _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RANState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_py _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ErrorAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_py _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/srv/Elevator.srv" NAME_WE)
add_dependencies(RAN_generate_messages_py _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ActionDefinition.msg" NAME_WE)
add_dependencies(RAN_generate_messages_py _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotDescriptionAGV.msg" NAME_WE)
add_dependencies(RAN_generate_messages_py _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/ElevatorStatus.msg" NAME_WE)
add_dependencies(RAN_generate_messages_py _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/RobotState.msg" NAME_WE)
add_dependencies(RAN_generate_messages_py _RAN_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lcr/catkin_ws/src/RAN/msg/Emergency.msg" NAME_WE)
add_dependencies(RAN_generate_messages_py _RAN_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(RAN_genpy)
add_dependencies(RAN_genpy RAN_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS RAN_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/RAN
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(RAN_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(RAN_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET industrial_msgs_generate_messages_cpp)
  add_dependencies(RAN_generate_messages_cpp industrial_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(RAN_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET mars_common_msgs_generate_messages_cpp)
  add_dependencies(RAN_generate_messages_cpp mars_common_msgs_generate_messages_cpp)
endif()
if(TARGET mars_agent_physical_robot_msgs_generate_messages_cpp)
  add_dependencies(RAN_generate_messages_cpp mars_agent_physical_robot_msgs_generate_messages_cpp)
endif()
if(TARGET sim_msgs_generate_messages_cpp)
  add_dependencies(RAN_generate_messages_cpp sim_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/RAN
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(RAN_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(RAN_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET industrial_msgs_generate_messages_eus)
  add_dependencies(RAN_generate_messages_eus industrial_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(RAN_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET mars_common_msgs_generate_messages_eus)
  add_dependencies(RAN_generate_messages_eus mars_common_msgs_generate_messages_eus)
endif()
if(TARGET mars_agent_physical_robot_msgs_generate_messages_eus)
  add_dependencies(RAN_generate_messages_eus mars_agent_physical_robot_msgs_generate_messages_eus)
endif()
if(TARGET sim_msgs_generate_messages_eus)
  add_dependencies(RAN_generate_messages_eus sim_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/RAN
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(RAN_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(RAN_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET industrial_msgs_generate_messages_lisp)
  add_dependencies(RAN_generate_messages_lisp industrial_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(RAN_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET mars_common_msgs_generate_messages_lisp)
  add_dependencies(RAN_generate_messages_lisp mars_common_msgs_generate_messages_lisp)
endif()
if(TARGET mars_agent_physical_robot_msgs_generate_messages_lisp)
  add_dependencies(RAN_generate_messages_lisp mars_agent_physical_robot_msgs_generate_messages_lisp)
endif()
if(TARGET sim_msgs_generate_messages_lisp)
  add_dependencies(RAN_generate_messages_lisp sim_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/RAN
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(RAN_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(RAN_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET industrial_msgs_generate_messages_nodejs)
  add_dependencies(RAN_generate_messages_nodejs industrial_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(RAN_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET mars_common_msgs_generate_messages_nodejs)
  add_dependencies(RAN_generate_messages_nodejs mars_common_msgs_generate_messages_nodejs)
endif()
if(TARGET mars_agent_physical_robot_msgs_generate_messages_nodejs)
  add_dependencies(RAN_generate_messages_nodejs mars_agent_physical_robot_msgs_generate_messages_nodejs)
endif()
if(TARGET sim_msgs_generate_messages_nodejs)
  add_dependencies(RAN_generate_messages_nodejs sim_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/RAN
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(RAN_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(RAN_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET industrial_msgs_generate_messages_py)
  add_dependencies(RAN_generate_messages_py industrial_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(RAN_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET mars_common_msgs_generate_messages_py)
  add_dependencies(RAN_generate_messages_py mars_common_msgs_generate_messages_py)
endif()
if(TARGET mars_agent_physical_robot_msgs_generate_messages_py)
  add_dependencies(RAN_generate_messages_py mars_agent_physical_robot_msgs_generate_messages_py)
endif()
if(TARGET sim_msgs_generate_messages_py)
  add_dependencies(RAN_generate_messages_py sim_msgs_generate_messages_py)
endif()
