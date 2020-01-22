// Generated by gencpp from file mars_agent_physical_robot_msgs/ActionAssignment.msg
// DO NOT EDIT!


#ifndef MARS_AGENT_PHYSICAL_ROBOT_MSGS_MESSAGE_ACTIONASSIGNMENT_H
#define MARS_AGENT_PHYSICAL_ROBOT_MSGS_MESSAGE_ACTIONASSIGNMENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mars_common_msgs/Id.h>
#include <mars_common_msgs/Id.h>
#include <mars_common_msgs/Id.h>
#include <mars_agent_physical_robot_msgs/Sequence.h>
#include <mars_agent_physical_robot_msgs/RobotAction.h>

namespace mars_agent_physical_robot_msgs
{
template <class ContainerAllocator>
struct ActionAssignment_
{
  typedef ActionAssignment_<ContainerAllocator> Type;

  ActionAssignment_()
    : robot_id()
    , action_id()
    , task_id()
    , sequence()
    , robot_action()  {
    }
  ActionAssignment_(const ContainerAllocator& _alloc)
    : robot_id(_alloc)
    , action_id(_alloc)
    , task_id(_alloc)
    , sequence(_alloc)
    , robot_action(_alloc)  {
  (void)_alloc;
    }



   typedef  ::mars_common_msgs::Id_<ContainerAllocator>  _robot_id_type;
  _robot_id_type robot_id;

   typedef  ::mars_common_msgs::Id_<ContainerAllocator>  _action_id_type;
  _action_id_type action_id;

   typedef  ::mars_common_msgs::Id_<ContainerAllocator>  _task_id_type;
  _task_id_type task_id;

   typedef  ::mars_agent_physical_robot_msgs::Sequence_<ContainerAllocator>  _sequence_type;
  _sequence_type sequence;

   typedef  ::mars_agent_physical_robot_msgs::RobotAction_<ContainerAllocator>  _robot_action_type;
  _robot_action_type robot_action;





  typedef boost::shared_ptr< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> const> ConstPtr;

}; // struct ActionAssignment_

typedef ::mars_agent_physical_robot_msgs::ActionAssignment_<std::allocator<void> > ActionAssignment;

typedef boost::shared_ptr< ::mars_agent_physical_robot_msgs::ActionAssignment > ActionAssignmentPtr;
typedef boost::shared_ptr< ::mars_agent_physical_robot_msgs::ActionAssignment const> ActionAssignmentConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mars_agent_physical_robot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'mars_agent_physical_robot_msgs': ['/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'mars_common_msgs': ['/home/lcr/catkin_ws/src/mars_common_msgs-master/msg'], 'industrial_msgs': ['/opt/ros/kinetic/share/industrial_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> >
{
  static const char* value()
  {
    return "efed3373da3eca18595f4459a9e9b329";
  }

  static const char* value(const ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xefed3373da3eca18ULL;
  static const uint64_t static_value2 = 0x595f4459a9e9b329ULL;
};

template<class ContainerAllocator>
struct DataType< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mars_agent_physical_robot_msgs/ActionAssignment";
  }

  static const char* value(const ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message for the definition of an Action\n\
mars_common_msgs/Id robot_id\n\
mars_common_msgs/Id action_id\n\
mars_common_msgs/Id task_id\n\
# Position of the action within the order\n\
Sequence sequence\n\
RobotAction robot_action\n\
\n\
================================================================================\n\
MSG: mars_common_msgs/Id\n\
# Universally Unique Identifier (UUID)\n\
# A UUID is a 128-bit number used to identify information in computer systems. \n\
# The term globally unique identifier (GUID) is also used. \n\
# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier\n\
uint8[16] uuid\n\
\n\
# optional description of the id\n\
# description can be:\n\
#   - a name\n\
#   - what is descriped by the id\n\
#   - etc.\n\
string description\n\
\n\
================================================================================\n\
MSG: mars_agent_physical_robot_msgs/Sequence\n\
# Message for defining a sequence.\n\
\n\
# Actual position in the sequence. The sequence starts at 1! \n\
int32 sequence_number\n\
# Overall lenght of the sequence\n\
int32 length\n\
\n\
================================================================================\n\
MSG: mars_agent_physical_robot_msgs/RobotAction\n\
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
mars_common_msgs/Tuple[] attributes\n\
# Optional description of the action. E.g.: unload left\n\
string description\n\
\n\
\n\
================================================================================\n\
MSG: mars_common_msgs/Tuple\n\
string type\n\
string name\n\
string value\n\
";
  }

  static const char* value(const ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
      stream.next(m.action_id);
      stream.next(m.task_id);
      stream.next(m.sequence);
      stream.next(m.robot_action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActionAssignment_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mars_agent_physical_robot_msgs::ActionAssignment_<ContainerAllocator>& v)
  {
    s << indent << "robot_id: ";
    s << std::endl;
    Printer< ::mars_common_msgs::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_id);
    s << indent << "action_id: ";
    s << std::endl;
    Printer< ::mars_common_msgs::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.action_id);
    s << indent << "task_id: ";
    s << std::endl;
    Printer< ::mars_common_msgs::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.task_id);
    s << indent << "sequence: ";
    s << std::endl;
    Printer< ::mars_agent_physical_robot_msgs::Sequence_<ContainerAllocator> >::stream(s, indent + "  ", v.sequence);
    s << indent << "robot_action: ";
    s << std::endl;
    Printer< ::mars_agent_physical_robot_msgs::RobotAction_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MARS_AGENT_PHYSICAL_ROBOT_MSGS_MESSAGE_ACTIONASSIGNMENT_H