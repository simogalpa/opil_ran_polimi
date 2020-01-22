cmake_minimum_required(VERSION 2.8.3)
project(sim_msgs)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  message_generation
  std_msgs
  geometry_msgs
  industrial_msgs
  sensor_msgs
  mars_common_msgs
  mars_agent_physical_robot_msgs
)

add_message_files(
  FILES
    RobotState.msg
    ErrorAGV.msg
    RobotDescriptionAGV.msg
    AssignmentId.msg
)

generate_messages(
   DEPENDENCIES
    std_msgs
    geometry_msgs
    industrial_msgs
    sensor_msgs
    mars_common_msgs
    mars_agent_physical_robot_msgs
)

catkin_package(
  # INCLUDE_DIRS src
	# LIBRARIES RAN
	CATKIN_DEPENDS 
    geometry_msgs
    roscpp
    rospy
    std_msgs
    message_runtime
    actionlib
    industrial_msgs
    sensor_msgs
    mars_common_msgs
    mars_agent_physical_robot_msgs
	# DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}_sim_msg src/sim_messages.cpp)
target_link_libraries(${PROJECT_NAME}_sim_msg ${catkin_LIBRARIES})
add_dependencies(${PROJECT_NAME}_sim_msg opil_v2_generate_messages_cpp)

