// Generated by gencpp from file opil_v2/ActionDefinition.msg
// DO NOT EDIT!


#ifndef OPIL_V2_MESSAGE_ACTIONDEFINITION_H
#define OPIL_V2_MESSAGE_ACTIONDEFINITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <opil_v2/Id.h>
#include <opil_v2/Id.h>
#include <opil_v2/Id.h>
#include <opil_v2/RobotAction.h>

namespace opil_v2
{
template <class ContainerAllocator>
struct ActionDefinition_
{
  typedef ActionDefinition_<ContainerAllocator> Type;

  ActionDefinition_()
    : header()
    , robot_id()
    , action_id()
    , task_id()
    , action()  {
    }
  ActionDefinition_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , robot_id(_alloc)
    , action_id(_alloc)
    , task_id(_alloc)
    , action(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::opil_v2::Id_<ContainerAllocator>  _robot_id_type;
  _robot_id_type robot_id;

   typedef  ::opil_v2::Id_<ContainerAllocator>  _action_id_type;
  _action_id_type action_id;

   typedef  ::opil_v2::Id_<ContainerAllocator>  _task_id_type;
  _task_id_type task_id;

   typedef  ::opil_v2::RobotAction_<ContainerAllocator>  _action_type;
  _action_type action;





  typedef boost::shared_ptr< ::opil_v2::ActionDefinition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opil_v2::ActionDefinition_<ContainerAllocator> const> ConstPtr;

}; // struct ActionDefinition_

typedef ::opil_v2::ActionDefinition_<std::allocator<void> > ActionDefinition;

typedef boost::shared_ptr< ::opil_v2::ActionDefinition > ActionDefinitionPtr;
typedef boost::shared_ptr< ::opil_v2::ActionDefinition const> ActionDefinitionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opil_v2::ActionDefinition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opil_v2::ActionDefinition_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opil_v2

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'opil_v2': ['/home/lcr/catkin_ws/src/OLD_opil_v2/msg'], 'industrial_msgs': ['/opt/ros/kinetic/share/industrial_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opil_v2::ActionDefinition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opil_v2::ActionDefinition_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opil_v2::ActionDefinition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opil_v2::ActionDefinition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opil_v2::ActionDefinition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opil_v2::ActionDefinition_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opil_v2::ActionDefinition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "251964ecde4dcc6d2653784d4aa1be70";
  }

  static const char* value(const ::opil_v2::ActionDefinition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x251964ecde4dcc6dULL;
  static const uint64_t static_value2 = 0x2653784d4aa1be70ULL;
};

template<class ContainerAllocator>
struct DataType< ::opil_v2::ActionDefinition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opil_v2/ActionDefinition";
  }

  static const char* value(const ::opil_v2::ActionDefinition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opil_v2::ActionDefinition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message for the definition of an Action\n\
std_msgs/Header header\n\
Id robot_id\n\
Id action_id\n\
Id task_id\n\
#definition of the action\n\
RobotAction action\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: opil_v2/Id\n\
# Message for defining IDs\n\
# numeric ID\n\
uint32 id\n\
\n\
# optional description of the id\n\
# description can be:\n\
#   - a name\n\
#   - what is descriped by the id\n\
#   - etc.\n\
\n\
string description\n\
\n\
\n\
================================================================================\n\
MSG: opil_v2/RobotAction\n\
# definition of all the possible actionsmars_agent_physical_robot_msgs\n\
uint8 CATEGORY_UNDEFINED = 0\n\
uint8 CATEGORY_NONE = 5\n\
uint8 CATEGORY_LOAD = 10\n\
uint8 CATEGORY_MANUAL_LOAD_START = 11\n\
uint8 CATEGORY_MANUAL_LOAD_DONE = 12\n\
uint8 CATEGORY_UNLOAD = 20\n\
uint8 CATEGORY_MANUAL_UNLOAD_START = 21\n\
uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22\n\
uint8 CATEGORY_START_CHARGING = 30\n\
uint8 CATEGORY_STOP_CHARGING = 31\n\
# ...\n\
\n\
\n\
# Category of the action which has to be performed\n\
uint8 category\n\
# Defines the robot specific action which has to be performed. \n\
# The specific actions must be defined by manufacturer. \n\
uint8 action\n\
Tuple[] attributes\n\
# Optional description of the action. E.g.: unload left\n\
string description\n\
\n\
\n\
================================================================================\n\
MSG: opil_v2/Tuple\n\
string type\n\
string name\n\
string value\n\
\n\
";
  }

  static const char* value(const ::opil_v2::ActionDefinition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opil_v2::ActionDefinition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.robot_id);
      stream.next(m.action_id);
      stream.next(m.task_id);
      stream.next(m.action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActionDefinition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opil_v2::ActionDefinition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opil_v2::ActionDefinition_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "robot_id: ";
    s << std::endl;
    Printer< ::opil_v2::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_id);
    s << indent << "action_id: ";
    s << std::endl;
    Printer< ::opil_v2::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.action_id);
    s << indent << "task_id: ";
    s << std::endl;
    Printer< ::opil_v2::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.task_id);
    s << indent << "action: ";
    s << std::endl;
    Printer< ::opil_v2::RobotAction_<ContainerAllocator> >::stream(s, indent + "  ", v.action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPIL_V2_MESSAGE_ACTIONDEFINITION_H
