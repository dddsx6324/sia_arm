// Generated by gencpp from file sia_serial/JointTrajRequest.msg
// DO NOT EDIT!


#ifndef SIA_SERIAL_MESSAGE_JOINTTRAJREQUEST_H
#define SIA_SERIAL_MESSAGE_JOINTTRAJREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <trajectory_msgs/JointTrajectoryPoint.h>

namespace sia_serial
{
template <class ContainerAllocator>
struct JointTrajRequest_
{
  typedef JointTrajRequest_<ContainerAllocator> Type;

  JointTrajRequest_()
    : point()  {
    }
  JointTrajRequest_(const ContainerAllocator& _alloc)
    : point(_alloc)  {
  (void)_alloc;
    }



   typedef  ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator>  _point_type;
  _point_type point;





  typedef boost::shared_ptr< ::sia_serial::JointTrajRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sia_serial::JointTrajRequest_<ContainerAllocator> const> ConstPtr;

}; // struct JointTrajRequest_

typedef ::sia_serial::JointTrajRequest_<std::allocator<void> > JointTrajRequest;

typedef boost::shared_ptr< ::sia_serial::JointTrajRequest > JointTrajRequestPtr;
typedef boost::shared_ptr< ::sia_serial::JointTrajRequest const> JointTrajRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sia_serial::JointTrajRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sia_serial::JointTrajRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sia_serial

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sia_serial::JointTrajRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sia_serial::JointTrajRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sia_serial::JointTrajRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sia_serial::JointTrajRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sia_serial::JointTrajRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sia_serial::JointTrajRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sia_serial::JointTrajRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7842d451962922d45f80a152cd22cfe8";
  }

  static const char* value(const ::sia_serial::JointTrajRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7842d451962922d4ULL;
  static const uint64_t static_value2 = 0x5f80a152cd22cfe8ULL;
};

template<class ContainerAllocator>
struct DataType< ::sia_serial::JointTrajRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sia_serial/JointTrajRequest";
  }

  static const char* value(const ::sia_serial::JointTrajRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sia_serial::JointTrajRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "trajectory_msgs/JointTrajectoryPoint point\n\
\n\
================================================================================\n\
MSG: trajectory_msgs/JointTrajectoryPoint\n\
# Each trajectory point specifies either positions[, velocities[, accelerations]]\n\
# or positions[, effort] for the trajectory to be executed.\n\
# All specified values are in the same order as the joint names in JointTrajectory.msg\n\
\n\
float64[] positions\n\
float64[] velocities\n\
float64[] accelerations\n\
float64[] effort\n\
duration time_from_start\n\
";
  }

  static const char* value(const ::sia_serial::JointTrajRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sia_serial::JointTrajRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointTrajRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sia_serial::JointTrajRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sia_serial::JointTrajRequest_<ContainerAllocator>& v)
  {
    s << indent << "point: ";
    s << std::endl;
    Printer< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIA_SERIAL_MESSAGE_JOINTTRAJREQUEST_H