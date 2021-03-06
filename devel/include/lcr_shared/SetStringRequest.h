// Generated by gencpp from file lcr_shared/SetStringRequest.msg
// DO NOT EDIT!


#ifndef LCR_SHARED_MESSAGE_SETSTRINGREQUEST_H
#define LCR_SHARED_MESSAGE_SETSTRINGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lcr_shared
{
template <class ContainerAllocator>
struct SetStringRequest_
{
  typedef SetStringRequest_<ContainerAllocator> Type;

  SetStringRequest_()
    : data()
    , requestor()
    , seq(0)
    , velocity_scale(0.0)  {
    }
  SetStringRequest_(const ContainerAllocator& _alloc)
    : data(_alloc)
    , requestor(_alloc)
    , seq(0)
    , velocity_scale(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  _data_type data;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _requestor_type;
  _requestor_type requestor;

   typedef int32_t _seq_type;
  _seq_type seq;

   typedef double _velocity_scale_type;
  _velocity_scale_type velocity_scale;





  typedef boost::shared_ptr< ::lcr_shared::SetStringRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lcr_shared::SetStringRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetStringRequest_

typedef ::lcr_shared::SetStringRequest_<std::allocator<void> > SetStringRequest;

typedef boost::shared_ptr< ::lcr_shared::SetStringRequest > SetStringRequestPtr;
typedef boost::shared_ptr< ::lcr_shared::SetStringRequest const> SetStringRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lcr_shared::SetStringRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lcr_shared::SetStringRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lcr_shared

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'lcr_shared': ['/home/lcr/catkin_ws/src/lcr_shared/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lcr_shared::SetStringRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lcr_shared::SetStringRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lcr_shared::SetStringRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lcr_shared::SetStringRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lcr_shared::SetStringRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lcr_shared::SetStringRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lcr_shared::SetStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e9d6a6744558bddb4a4b785e5a8d12c";
  }

  static const char* value(const ::lcr_shared::SetStringRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e9d6a6744558bddULL;
  static const uint64_t static_value2 = 0xb4a4b785e5a8d12cULL;
};

template<class ContainerAllocator>
struct DataType< ::lcr_shared::SetStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lcr_shared/SetStringRequest";
  }

  static const char* value(const ::lcr_shared::SetStringRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lcr_shared::SetStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string data\n\
string requestor\n\
int32 seq\n\
float64 velocity_scale\n\
";
  }

  static const char* value(const ::lcr_shared::SetStringRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lcr_shared::SetStringRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.requestor);
      stream.next(m.seq);
      stream.next(m.velocity_scale);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetStringRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lcr_shared::SetStringRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lcr_shared::SetStringRequest_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.data);
    s << indent << "requestor: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.requestor);
    s << indent << "seq: ";
    Printer<int32_t>::stream(s, indent + "  ", v.seq);
    s << indent << "velocity_scale: ";
    Printer<double>::stream(s, indent + "  ", v.velocity_scale);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LCR_SHARED_MESSAGE_SETSTRINGREQUEST_H
