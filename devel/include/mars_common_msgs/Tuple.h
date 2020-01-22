// Generated by gencpp from file mars_common_msgs/Tuple.msg
// DO NOT EDIT!


#ifndef MARS_COMMON_MSGS_MESSAGE_TUPLE_H
#define MARS_COMMON_MSGS_MESSAGE_TUPLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mars_common_msgs
{
template <class ContainerAllocator>
struct Tuple_
{
  typedef Tuple_<ContainerAllocator> Type;

  Tuple_()
    : type()
    , name()
    , value()  {
    }
  Tuple_(const ContainerAllocator& _alloc)
    : type(_alloc)
    , name(_alloc)
    , value(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::mars_common_msgs::Tuple_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mars_common_msgs::Tuple_<ContainerAllocator> const> ConstPtr;

}; // struct Tuple_

typedef ::mars_common_msgs::Tuple_<std::allocator<void> > Tuple;

typedef boost::shared_ptr< ::mars_common_msgs::Tuple > TuplePtr;
typedef boost::shared_ptr< ::mars_common_msgs::Tuple const> TupleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mars_common_msgs::Tuple_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mars_common_msgs::Tuple_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mars_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'mars_common_msgs': ['/home/lcr/catkin_ws/src/mars_common_msgs-master/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mars_common_msgs::Tuple_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mars_common_msgs::Tuple_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_common_msgs::Tuple_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_common_msgs::Tuple_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_common_msgs::Tuple_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_common_msgs::Tuple_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mars_common_msgs::Tuple_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6496eae46f94d8eb3a3110f55e520950";
  }

  static const char* value(const ::mars_common_msgs::Tuple_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6496eae46f94d8ebULL;
  static const uint64_t static_value2 = 0x3a3110f55e520950ULL;
};

template<class ContainerAllocator>
struct DataType< ::mars_common_msgs::Tuple_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mars_common_msgs/Tuple";
  }

  static const char* value(const ::mars_common_msgs::Tuple_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mars_common_msgs::Tuple_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string type\n\
string name\n\
string value\n\
";
  }

  static const char* value(const ::mars_common_msgs::Tuple_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mars_common_msgs::Tuple_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.name);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Tuple_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mars_common_msgs::Tuple_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mars_common_msgs::Tuple_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "value: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MARS_COMMON_MSGS_MESSAGE_TUPLE_H
