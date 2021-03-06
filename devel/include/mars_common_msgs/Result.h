// Generated by gencpp from file mars_common_msgs/Result.msg
// DO NOT EDIT!


#ifndef MARS_COMMON_MSGS_MESSAGE_RESULT_H
#define MARS_COMMON_MSGS_MESSAGE_RESULT_H


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
struct Result_
{
  typedef Result_<ContainerAllocator> Type;

  Result_()
    : result(0)
    , description()  {
    }
  Result_(const ContainerAllocator& _alloc)
    : result(0)
    , description(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _result_type;
  _result_type result;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _description_type;
  _description_type description;



  enum {
    RESULT_ERROR = -1,
    RESULT_SUCCESS = 0,
    RESULT_SUCCESS_ADDITIONAL_INFO = 1,
  };


  typedef boost::shared_ptr< ::mars_common_msgs::Result_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mars_common_msgs::Result_<ContainerAllocator> const> ConstPtr;

}; // struct Result_

typedef ::mars_common_msgs::Result_<std::allocator<void> > Result;

typedef boost::shared_ptr< ::mars_common_msgs::Result > ResultPtr;
typedef boost::shared_ptr< ::mars_common_msgs::Result const> ResultConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mars_common_msgs::Result_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mars_common_msgs::Result_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::mars_common_msgs::Result_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mars_common_msgs::Result_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_common_msgs::Result_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_common_msgs::Result_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_common_msgs::Result_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_common_msgs::Result_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mars_common_msgs::Result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fca73f6d4e444c1fbc287204cabcd88b";
  }

  static const char* value(const ::mars_common_msgs::Result_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfca73f6d4e444c1fULL;
  static const uint64_t static_value2 = 0xbc287204cabcd88bULL;
};

template<class ContainerAllocator>
struct DataType< ::mars_common_msgs::Result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mars_common_msgs/Result";
  }

  static const char* value(const ::mars_common_msgs::Result_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mars_common_msgs::Result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Definition of possible results\n\
# In general:\n\
# - a result less zero represents an error\n\
# - a result equal to zero represents\n\
# - a result greater zero represents\n\
\n\
# < 0: Error with further information\n\
int8 RESULT_ERROR=-1\n\
\n\
# == 0: Success\n\
int8 RESULT_SUCCESS=0\n\
\n\
# > 0: Success with additional information\n\
int8 RESULT_SUCCESS_ADDITIONAL_INFO=1\n\
\n\
int8 result\n\
string description\n\
";
  }

  static const char* value(const ::mars_common_msgs::Result_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mars_common_msgs::Result_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.description);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Result_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mars_common_msgs::Result_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mars_common_msgs::Result_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int8_t>::stream(s, indent + "  ", v.result);
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.description);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MARS_COMMON_MSGS_MESSAGE_RESULT_H
