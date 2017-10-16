// Generated by gencpp from file plus_minus_msg/what_input.msg
// DO NOT EDIT!


#ifndef PLUS_MINUS_MSG_MESSAGE_WHAT_INPUT_H
#define PLUS_MINUS_MSG_MESSAGE_WHAT_INPUT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace plus_minus_msg
{
template <class ContainerAllocator>
struct what_input_
{
  typedef what_input_<ContainerAllocator> Type;

  what_input_()
    : comand()
    , inp1(0)
    , inp2(0)  {
    }
  what_input_(const ContainerAllocator& _alloc)
    : comand(_alloc)
    , inp1(0)
    , inp2(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _comand_type;
  _comand_type comand;

   typedef int16_t _inp1_type;
  _inp1_type inp1;

   typedef int16_t _inp2_type;
  _inp2_type inp2;




  typedef boost::shared_ptr< ::plus_minus_msg::what_input_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::plus_minus_msg::what_input_<ContainerAllocator> const> ConstPtr;

}; // struct what_input_

typedef ::plus_minus_msg::what_input_<std::allocator<void> > what_input;

typedef boost::shared_ptr< ::plus_minus_msg::what_input > what_inputPtr;
typedef boost::shared_ptr< ::plus_minus_msg::what_input const> what_inputConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::plus_minus_msg::what_input_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::plus_minus_msg::what_input_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace plus_minus_msg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'plus_minus_msg': ['/home/ton/catkin_ws/src/plus_minus_msg/msg', '/home/ton/catkin_ws/src/plus_minus_msg/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::plus_minus_msg::what_input_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::plus_minus_msg::what_input_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plus_minus_msg::what_input_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plus_minus_msg::what_input_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plus_minus_msg::what_input_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plus_minus_msg::what_input_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::plus_minus_msg::what_input_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f8ac08cd95c64326d8f6b9dae5d070dd";
  }

  static const char* value(const ::plus_minus_msg::what_input_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf8ac08cd95c64326ULL;
  static const uint64_t static_value2 = 0xd8f6b9dae5d070ddULL;
};

template<class ContainerAllocator>
struct DataType< ::plus_minus_msg::what_input_<ContainerAllocator> >
{
  static const char* value()
  {
    return "plus_minus_msg/what_input";
  }

  static const char* value(const ::plus_minus_msg::what_input_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::plus_minus_msg::what_input_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string comand\n\
int16 inp1\n\
int16 inp2\n\
";
  }

  static const char* value(const ::plus_minus_msg::what_input_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::plus_minus_msg::what_input_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.comand);
      stream.next(m.inp1);
      stream.next(m.inp2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct what_input_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::plus_minus_msg::what_input_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::plus_minus_msg::what_input_<ContainerAllocator>& v)
  {
    s << indent << "comand: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.comand);
    s << indent << "inp1: ";
    Printer<int16_t>::stream(s, indent + "  ", v.inp1);
    s << indent << "inp2: ";
    Printer<int16_t>::stream(s, indent + "  ", v.inp2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLUS_MINUS_MSG_MESSAGE_WHAT_INPUT_H
