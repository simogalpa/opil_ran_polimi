// Generated by gencpp from file lcr_driver/Battery.msg
// DO NOT EDIT!


#ifndef LCR_DRIVER_MESSAGE_BATTERY_H
#define LCR_DRIVER_MESSAGE_BATTERY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace lcr_driver
{
template <class ContainerAllocator>
struct Battery_
{
  typedef Battery_<ContainerAllocator> Type;

  Battery_()
    : header()
    , level(0.0)  {
    }
  Battery_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , level(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _level_type;
  _level_type level;





  typedef boost::shared_ptr< ::lcr_driver::Battery_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lcr_driver::Battery_<ContainerAllocator> const> ConstPtr;

}; // struct Battery_

typedef ::lcr_driver::Battery_<std::allocator<void> > Battery;

typedef boost::shared_ptr< ::lcr_driver::Battery > BatteryPtr;
typedef boost::shared_ptr< ::lcr_driver::Battery const> BatteryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lcr_driver::Battery_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lcr_driver::Battery_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lcr_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'lcr_driver': ['/home/lcr/catkin_ws/src/lcr_driver/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lcr_driver::Battery_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lcr_driver::Battery_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lcr_driver::Battery_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lcr_driver::Battery_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lcr_driver::Battery_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lcr_driver::Battery_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lcr_driver::Battery_<ContainerAllocator> >
{
  static const char* value()
  {
    return "36b71bac3c7d6d503ee628ec4360bc1b";
  }

  static const char* value(const ::lcr_driver::Battery_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x36b71bac3c7d6d50ULL;
  static const uint64_t static_value2 = 0x3ee628ec4360bc1bULL;
};

template<class ContainerAllocator>
struct DataType< ::lcr_driver::Battery_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lcr_driver/Battery";
  }

  static const char* value(const ::lcr_driver::Battery_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lcr_driver::Battery_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float32 level # in %\n\
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
";
  }

  static const char* value(const ::lcr_driver::Battery_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lcr_driver::Battery_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.level);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Battery_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lcr_driver::Battery_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lcr_driver::Battery_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "level: ";
    Printer<float>::stream(s, indent + "  ", v.level);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LCR_DRIVER_MESSAGE_BATTERY_H
