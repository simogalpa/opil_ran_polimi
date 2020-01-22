# Install script for directory: /home/lcr/catkin_ws/src/opil_v2

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opil_v2/msg" TYPE FILE FILES
    "/home/lcr/catkin_ws/src/opil_v2/msg/ActionAssignment.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/ActionDefinition.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/AssignmentId.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/AssignmentStatus.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/CancelTask.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/Id.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/MotionAssignment.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/RANState.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/Sequence.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/RobotDescription.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/RobotState.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/RobotDescriptionAGV.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/ActionDefinition.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/ErrorRAN.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/ErrorAGV.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/Motion.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/RobotAction.msg"
    "/home/lcr/catkin_ws/src/opil_v2/msg/Tuple.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opil_v2/cmake" TYPE FILE FILES "/home/lcr/catkin_ws/build/opil_v2/catkin_generated/installspace/opil_v2-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/include/opil_v2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/share/roseus/ros/opil_v2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/share/common-lisp/ros/opil_v2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/share/gennodejs/ros/opil_v2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/lcr/catkin_ws/devel/lib/python2.7/dist-packages/opil_v2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lcr/catkin_ws/devel/lib/python2.7/dist-packages/opil_v2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lcr/catkin_ws/build/opil_v2/catkin_generated/installspace/opil_v2.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opil_v2/cmake" TYPE FILE FILES "/home/lcr/catkin_ws/build/opil_v2/catkin_generated/installspace/opil_v2-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opil_v2/cmake" TYPE FILE FILES
    "/home/lcr/catkin_ws/build/opil_v2/catkin_generated/installspace/opil_v2Config.cmake"
    "/home/lcr/catkin_ws/build/opil_v2/catkin_generated/installspace/opil_v2Config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opil_v2" TYPE FILE FILES "/home/lcr/catkin_ws/src/opil_v2/package.xml")
endif()

