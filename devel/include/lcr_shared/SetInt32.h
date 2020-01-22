// Generated by gencpp from file lcr_shared/SetInt32.msg
// DO NOT EDIT!


#ifndef LCR_SHARED_MESSAGE_SETINT32_H
#define LCR_SHARED_MESSAGE_SETINT32_H

#include <ros/service_traits.h>


#include <lcr_shared/SetInt32Request.h>
#include <lcr_shared/SetInt32Response.h>


namespace lcr_shared
{

struct SetInt32
{

typedef SetInt32Request Request;
typedef SetInt32Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetInt32
} // namespace lcr_shared


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lcr_shared::SetInt32 > {
  static const char* value()
  {
    return "41a6318c88ca9d75d7a585e2aa4ca6ea";
  }

  static const char* value(const ::lcr_shared::SetInt32&) { return value(); }
};

template<>
struct DataType< ::lcr_shared::SetInt32 > {
  static const char* value()
  {
    return "lcr_shared/SetInt32";
  }

  static const char* value(const ::lcr_shared::SetInt32&) { return value(); }
};


// service_traits::MD5Sum< ::lcr_shared::SetInt32Request> should match 
// service_traits::MD5Sum< ::lcr_shared::SetInt32 > 
template<>
struct MD5Sum< ::lcr_shared::SetInt32Request>
{
  static const char* value()
  {
    return MD5Sum< ::lcr_shared::SetInt32 >::value();
  }
  static const char* value(const ::lcr_shared::SetInt32Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::lcr_shared::SetInt32Request> should match 
// service_traits::DataType< ::lcr_shared::SetInt32 > 
template<>
struct DataType< ::lcr_shared::SetInt32Request>
{
  static const char* value()
  {
    return DataType< ::lcr_shared::SetInt32 >::value();
  }
  static const char* value(const ::lcr_shared::SetInt32Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lcr_shared::SetInt32Response> should match 
// service_traits::MD5Sum< ::lcr_shared::SetInt32 > 
template<>
struct MD5Sum< ::lcr_shared::SetInt32Response>
{
  static const char* value()
  {
    return MD5Sum< ::lcr_shared::SetInt32 >::value();
  }
  static const char* value(const ::lcr_shared::SetInt32Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::lcr_shared::SetInt32Response> should match 
// service_traits::DataType< ::lcr_shared::SetInt32 > 
template<>
struct DataType< ::lcr_shared::SetInt32Response>
{
  static const char* value()
  {
    return DataType< ::lcr_shared::SetInt32 >::value();
  }
  static const char* value(const ::lcr_shared::SetInt32Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LCR_SHARED_MESSAGE_SETINT32_H
