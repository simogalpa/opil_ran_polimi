// Generated by gencpp from file lcr_shared/database.msg
// DO NOT EDIT!


#ifndef LCR_SHARED_MESSAGE_DATABASE_H
#define LCR_SHARED_MESSAGE_DATABASE_H

#include <ros/service_traits.h>


#include <lcr_shared/databaseRequest.h>
#include <lcr_shared/databaseResponse.h>


namespace lcr_shared
{

struct database
{

typedef databaseRequest Request;
typedef databaseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct database
} // namespace lcr_shared


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lcr_shared::database > {
  static const char* value()
  {
    return "2852c5aabf45e25b23b8821ac51dc772";
  }

  static const char* value(const ::lcr_shared::database&) { return value(); }
};

template<>
struct DataType< ::lcr_shared::database > {
  static const char* value()
  {
    return "lcr_shared/database";
  }

  static const char* value(const ::lcr_shared::database&) { return value(); }
};


// service_traits::MD5Sum< ::lcr_shared::databaseRequest> should match 
// service_traits::MD5Sum< ::lcr_shared::database > 
template<>
struct MD5Sum< ::lcr_shared::databaseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lcr_shared::database >::value();
  }
  static const char* value(const ::lcr_shared::databaseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lcr_shared::databaseRequest> should match 
// service_traits::DataType< ::lcr_shared::database > 
template<>
struct DataType< ::lcr_shared::databaseRequest>
{
  static const char* value()
  {
    return DataType< ::lcr_shared::database >::value();
  }
  static const char* value(const ::lcr_shared::databaseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lcr_shared::databaseResponse> should match 
// service_traits::MD5Sum< ::lcr_shared::database > 
template<>
struct MD5Sum< ::lcr_shared::databaseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lcr_shared::database >::value();
  }
  static const char* value(const ::lcr_shared::databaseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lcr_shared::databaseResponse> should match 
// service_traits::DataType< ::lcr_shared::database > 
template<>
struct DataType< ::lcr_shared::databaseResponse>
{
  static const char* value()
  {
    return DataType< ::lcr_shared::database >::value();
  }
  static const char* value(const ::lcr_shared::databaseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LCR_SHARED_MESSAGE_DATABASE_H