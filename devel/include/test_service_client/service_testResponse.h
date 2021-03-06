// Generated by gencpp from file test_service_client/service_testResponse.msg
// DO NOT EDIT!


#ifndef TEST_SERVICE_CLIENT_MESSAGE_SERVICE_TESTRESPONSE_H
#define TEST_SERVICE_CLIENT_MESSAGE_SERVICE_TESTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>

namespace test_service_client
{
template <class ContainerAllocator>
struct service_testResponse_
{
  typedef service_testResponse_<ContainerAllocator> Type;

  service_testResponse_()
    : responseNO(0)
    , response()
    , data()  {
    }
  service_testResponse_(const ContainerAllocator& _alloc)
    : responseNO(0)
    , response(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _responseNO_type;
  _responseNO_type responseNO;

   typedef  ::std_msgs::String_<ContainerAllocator>  _response_type;
  _response_type response;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::test_service_client::service_testResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test_service_client::service_testResponse_<ContainerAllocator> const> ConstPtr;

}; // struct service_testResponse_

typedef ::test_service_client::service_testResponse_<std::allocator<void> > service_testResponse;

typedef boost::shared_ptr< ::test_service_client::service_testResponse > service_testResponsePtr;
typedef boost::shared_ptr< ::test_service_client::service_testResponse const> service_testResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test_service_client::service_testResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test_service_client::service_testResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace test_service_client

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::test_service_client::service_testResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_service_client::service_testResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_service_client::service_testResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_service_client::service_testResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_service_client::service_testResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_service_client::service_testResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test_service_client::service_testResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9ed594ba4a704fdda314cc3d72ee7561";
  }

  static const char* value(const ::test_service_client::service_testResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9ed594ba4a704fddULL;
  static const uint64_t static_value2 = 0xa314cc3d72ee7561ULL;
};

template<class ContainerAllocator>
struct DataType< ::test_service_client::service_testResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test_service_client/service_testResponse";
  }

  static const char* value(const ::test_service_client::service_testResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test_service_client::service_testResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
int16 responseNO\n\
std_msgs/String response\n\
string data\n\
\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
";
  }

  static const char* value(const ::test_service_client::service_testResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test_service_client::service_testResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.responseNO);
      stream.next(m.response);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct service_testResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test_service_client::service_testResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test_service_client::service_testResponse_<ContainerAllocator>& v)
  {
    s << indent << "responseNO: ";
    Printer<int16_t>::stream(s, indent + "  ", v.responseNO);
    s << indent << "response: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.response);
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_SERVICE_CLIENT_MESSAGE_SERVICE_TESTRESPONSE_H
