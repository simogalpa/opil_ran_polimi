// Generated by gencpp from file RAN/ElevatorRequest.msg
// DO NOT EDIT!


#ifndef RAN_MESSAGE_ELEVATORREQUEST_H
#define RAN_MESSAGE_ELEVATORREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace RAN
{
template <class ContainerAllocator>
struct ElevatorRequest_
{
  typedef ElevatorRequest_<ContainerAllocator> Type;

  ElevatorRequest_()
    : action()
    , desired_floor(0)  {
    }
  ElevatorRequest_(const ContainerAllocator& _alloc)
    : action(_alloc)
    , desired_floor(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _action_type;
  _action_type action;

   typedef int8_t _desired_floor_type;
  _desired_floor_type desired_floor;





  typedef boost::shared_ptr< ::RAN::ElevatorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RAN::ElevatorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ElevatorRequest_

typedef ::RAN::ElevatorRequest_<std::allocator<void> > ElevatorRequest;

typedef boost::shared_ptr< ::RAN::ElevatorRequest > ElevatorRequestPtr;
typedef boost::shared_ptr< ::RAN::ElevatorRequest const> ElevatorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RAN::ElevatorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RAN::ElevatorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace RAN

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'mars_agent_physical_robot_msgs': ['/home/lcr/catkin_ws/src/mars_agent_physical_robot_msg-master/msg'], 'RAN': ['/home/lcr/catkin_ws/src/RAN/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sim_msgs': ['/home/lcr/catkin_ws/src/sim_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'mars_common_msgs': ['/home/lcr/catkin_ws/src/mars_common_msgs-master/msg'], 'industrial_msgs': ['/opt/ros/kinetic/share/industrial_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::RAN::ElevatorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RAN::ElevatorRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RAN::ElevatorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RAN::ElevatorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RAN::ElevatorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RAN::ElevatorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RAN::ElevatorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a1025127bf62fbc377f14283faaa732a";
  }

  static const char* value(const ::RAN::ElevatorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa1025127bf62fbc3ULL;
  static const uint64_t static_value2 = 0x77f14283faaa732aULL;
};

template<class ContainerAllocator>
struct DataType< ::RAN::ElevatorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RAN/ElevatorRequest";
  }

  static const char* value(const ::RAN::ElevatorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RAN::ElevatorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string action\n\
int8 desired_floor\n\
";
  }

  static const char* value(const ::RAN::ElevatorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RAN::ElevatorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action);
      stream.next(m.desired_floor);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ElevatorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RAN::ElevatorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RAN::ElevatorRequest_<ContainerAllocator>& v)
  {
    s << indent << "action: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.action);
    s << indent << "desired_floor: ";
    Printer<int8_t>::stream(s, indent + "  ", v.desired_floor);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RAN_MESSAGE_ELEVATORREQUEST_H