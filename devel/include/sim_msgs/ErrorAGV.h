// Generated by gencpp from file sim_msgs/ErrorAGV.msg
// DO NOT EDIT!


#ifndef SIM_MSGS_MESSAGE_ERRORAGV_H
#define SIM_MSGS_MESSAGE_ERRORAGV_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mars_common_msgs/Id.h>

namespace sim_msgs
{
template <class ContainerAllocator>
struct ErrorAGV_
{
  typedef ErrorAGV_<ContainerAllocator> Type;

  ErrorAGV_()
    : header()
    , vehicle_id()
    , error_AGV(0)
    , description()  {
    }
  ErrorAGV_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , vehicle_id(_alloc)
    , error_AGV(0)
    , description(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::mars_common_msgs::Id_<ContainerAllocator>  _vehicle_id_type;
  _vehicle_id_type vehicle_id;

   typedef uint8_t _error_AGV_type;
  _error_AGV_type error_AGV;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _description_type;
  _description_type description;





  typedef boost::shared_ptr< ::sim_msgs::ErrorAGV_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sim_msgs::ErrorAGV_<ContainerAllocator> const> ConstPtr;

}; // struct ErrorAGV_

typedef ::sim_msgs::ErrorAGV_<std::allocator<void> > ErrorAGV;

typedef boost::shared_ptr< ::sim_msgs::ErrorAGV > ErrorAGVPtr;
typedef boost::shared_ptr< ::sim_msgs::ErrorAGV const> ErrorAGVConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sim_msgs::ErrorAGV_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sim_msgs::ErrorAGV_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sim_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'mars_agent_physical_robot_msgs': ['/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'sim_msgs': ['/home/lcr/catkin_ws/src/sim_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'mars_common_msgs': ['/home/lcr/catkin_ws/src/mars_common_msgs-master/msg'], 'industrial_msgs': ['/opt/ros/kinetic/share/industrial_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sim_msgs::ErrorAGV_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sim_msgs::ErrorAGV_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sim_msgs::ErrorAGV_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sim_msgs::ErrorAGV_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sim_msgs::ErrorAGV_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sim_msgs::ErrorAGV_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sim_msgs::ErrorAGV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7e428f0a97eaf783f2ff75628d5be97";
  }

  static const char* value(const ::sim_msgs::ErrorAGV_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7e428f0a97eaf78ULL;
  static const uint64_t static_value2 = 0x3f2ff75628d5be97ULL;
};

template<class ContainerAllocator>
struct DataType< ::sim_msgs::ErrorAGV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sim_msgs/ErrorAGV";
  }

  static const char* value(const ::sim_msgs::ErrorAGV_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sim_msgs::ErrorAGV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Error message from the AGV\n\
std_msgs/Header header\n\
mars_common_msgs/Id vehicle_id\n\
uint8 error_AGV\n\
string description\n\
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

  static const char* value(const ::sim_msgs::ErrorAGV_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sim_msgs::ErrorAGV_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.vehicle_id);
      stream.next(m.error_AGV);
      stream.next(m.description);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ErrorAGV_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sim_msgs::ErrorAGV_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sim_msgs::ErrorAGV_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "vehicle_id: ";
    s << std::endl;
    Printer< ::mars_common_msgs::Id_<ContainerAllocator> >::stream(s, indent + "  ", v.vehicle_id);
    s << indent << "error_AGV: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error_AGV);
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.description);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIM_MSGS_MESSAGE_ERRORAGV_H