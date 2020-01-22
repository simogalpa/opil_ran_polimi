// Generated by gencpp from file mars_agent_physical_robot_msgs/CancelTask.msg
// DO NOT EDIT!


#ifndef MARS_AGENT_PHYSICAL_ROBOT_MSGS_MESSAGE_CANCELTASK_H
#define MARS_AGENT_PHYSICAL_ROBOT_MSGS_MESSAGE_CANCELTASK_H


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

namespace mars_agent_physical_robot_msgs
{
template <class ContainerAllocator>
struct CancelTask_
{
  typedef CancelTask_<ContainerAllocator> Type;

  CancelTask_()
    : task_id()
    , action_id()
    , motion_id()  {
    }
  CancelTask_(const ContainerAllocator& _alloc)
    : task_id(_alloc)
    , action_id(_alloc)
    , motion_id(_alloc)  {
  (void)_alloc;
    }



   typedef  ::mars_common_msgs::Id_<ContainerAllocator>  _task_id_type;
  _task_id_type task_id;

   typedef  ::mars_common_msgs::Id_<ContainerAllocator>  _action_id_type;
  _action_id_type action_id;

   typedef  ::mars_common_msgs::Id_<ContainerAllocator>  _motion_id_type;
  _motion_id_type motion_id;





  typedef boost::shared_ptr< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> const> ConstPtr;

}; // struct CancelTask_

typedef ::mars_agent_physical_robot_msgs::CancelTask_<std::allocator<void> > CancelTask;

typedef boost::shared_ptr< ::mars_agent_physical_robot_msgs::CancelTask > CancelTaskPtr;
typedef boost::shared_ptr< ::mars_agent_physical_robot_msgs::CancelTask const> CancelTaskConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4202b775afdccaf886a80f2adcd776fa";
  }

  static const char* value(const ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4202b775afdccaf8ULL;
  static const uint64_t static_value2 = 0x86a80f2adcd776faULL;
};

template<class ContainerAllocator>
struct DataType< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mars_agent_physical_robot_msgs/CancelTask";
  }

  static const char* value(const ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# task ID instead of action id because the message deletes the whole task\n\
# the task is a sequence of motions and actions\n\
mars_common_msgs/Id task_id\n\
mars_common_msgs/Id action_id\n\
mars_common_msgs/Id motion_id\n\
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
";
  }

  static const char* value(const ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_id);
      stream.next(m.action_id);
      stream.next(m.motion_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CancelTask_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mars_agent_physical_robot_msgs::CancelTask_<ContainerAllocator>& v)
  {
    s << indent << "task_id: ";
    s << std::endl;
    Printer< ::mars_common_msgs::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.task_id);
    s << indent << "action_id: ";
    s << std::endl;
    Printer< ::mars_common_msgs::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.action_id);
    s << indent << "motion_id: ";
    s << std::endl;
    Printer< ::mars_common_msgs::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.motion_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MARS_AGENT_PHYSICAL_ROBOT_MSGS_MESSAGE_CANCELTASK_H