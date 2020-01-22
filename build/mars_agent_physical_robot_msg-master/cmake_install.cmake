# Install script for directory: /home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lcr/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mars_agent_physical_robot_msgs/msg" TYPE FILE FILES
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Sequence.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActionAssignment.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/CancelTask.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/MotionAssignment.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAgentProperties.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/VehicleType.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/ActualState.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/RobotAction.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/AssignmentStatus.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Position.msg"
    "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg/Motion.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mars_agent_physical_robot_msgs/cmake" TYPE FILE FILES "/home/lcr/catkin_ws/build/mars_agent_physical_robot_msg-master/catkin_generated/installspace/mars_agent_physical_robot_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/include/mars_agent_physical_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/share/roseus/ros/mars_agent_physical_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/share/common-lisp/ros/mars_agent_physical_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/share/gennodejs/ros/mars_agent_physical_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/lcr/catkin_ws/devel/lib/python2.7/dist-packages/mars_agent_physical_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/lib/python2.7/dist-packages/mars_agent_physical_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lcr/catkin_ws/build/mars_agent_physical_robot_msg-master/catkin_generated/installspace/mars_agent_physical_robot_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mars_agent_physical_robot_msgs/cmake" TYPE FILE FILES "/home/lcr/catkin_ws/build/mars_agent_physical_robot_msg-master/catkin_generated/installspace/mars_agent_physical_robot_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mars_agent_physical_robot_msgs/cmake" TYPE FILE FILES
    "/home/lcr/catkin_ws/build/mars_agent_physical_robot_msg-master/catkin_generated/installspace/mars_agent_physical_robot_msgsConfig.cmake"
    "/home/lcr/catkin_ws/build/mars_agent_physical_robot_msg-master/catkin_generated/installspace/mars_agent_physical_robot_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mars_agent_physical_robot_msgs" TYPE FILE FILES "/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/package.xml")
endif()

