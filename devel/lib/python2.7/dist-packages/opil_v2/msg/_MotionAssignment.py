# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from opil_v2/MotionAssignment.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import opil_v2.msg
import geometry_msgs.msg
import std_msgs.msg

class MotionAssignment(genpy.Message):
  _md5sum = "c94b53e5b03525bbcd11becc8ae7b0b3"
  _type = "opil_v2/MotionAssignment"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# Message concerning the assignment of a new Motion command
Header header
Id robot_id
Id point_id
Id task_id
Id motion_id
geometry_msgs/Pose2D point
# TRUE if the point is a waypoint, FALSE if it is a goal
bool is_waypoint
# TRUE if the theta of the point has to be considered
bool use_orientation
geometry_msgs/Twist max_velocity
geometry_msgs/Accel max_acceleration
# defines the area in which the robot can move
geometry_msgs/PolygonStamped motion_area
# the position of the assignment in the sequence
Sequence sequence

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: opil_v2/Id
# Message for defining IDs
# numeric ID
uint32 id

# optional description of the id
# description can be:
#   - a name
#   - what is descriped by the id
#   - etc.

string description


================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: opil_v2/Sequence
# Message for defining a sequence
# actual position in the sequence
int32 sequence_number
# overall lenght of the sequence
int32 length
"""
  __slots__ = ['header','robot_id','point_id','task_id','motion_id','point','is_waypoint','use_orientation','max_velocity','max_acceleration','motion_area','sequence']
  _slot_types = ['std_msgs/Header','opil_v2/Id','opil_v2/Id','opil_v2/Id','opil_v2/Id','geometry_msgs/Pose2D','bool','bool','geometry_msgs/Twist','geometry_msgs/Accel','geometry_msgs/PolygonStamped','opil_v2/Sequence']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,robot_id,point_id,task_id,motion_id,point,is_waypoint,use_orientation,max_velocity,max_acceleration,motion_area,sequence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MotionAssignment, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.robot_id is None:
        self.robot_id = opil_v2.msg.Id()
      if self.point_id is None:
        self.point_id = opil_v2.msg.Id()
      if self.task_id is None:
        self.task_id = opil_v2.msg.Id()
      if self.motion_id is None:
        self.motion_id = opil_v2.msg.Id()
      if self.point is None:
        self.point = geometry_msgs.msg.Pose2D()
      if self.is_waypoint is None:
        self.is_waypoint = False
      if self.use_orientation is None:
        self.use_orientation = False
      if self.max_velocity is None:
        self.max_velocity = geometry_msgs.msg.Twist()
      if self.max_acceleration is None:
        self.max_acceleration = geometry_msgs.msg.Accel()
      if self.motion_area is None:
        self.motion_area = geometry_msgs.msg.PolygonStamped()
      if self.sequence is None:
        self.sequence = opil_v2.msg.Sequence()
    else:
      self.header = std_msgs.msg.Header()
      self.robot_id = opil_v2.msg.Id()
      self.point_id = opil_v2.msg.Id()
      self.task_id = opil_v2.msg.Id()
      self.motion_id = opil_v2.msg.Id()
      self.point = geometry_msgs.msg.Pose2D()
      self.is_waypoint = False
      self.use_orientation = False
      self.max_velocity = geometry_msgs.msg.Twist()
      self.max_acceleration = geometry_msgs.msg.Accel()
      self.motion_area = geometry_msgs.msg.PolygonStamped()
      self.sequence = opil_v2.msg.Sequence()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.robot_id.id))
      _x = self.robot_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.point_id.id))
      _x = self.point_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.task_id.id))
      _x = self.task_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.motion_id.id))
      _x = self.motion_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d2B12d3I().pack(_x.point.x, _x.point.y, _x.point.theta, _x.is_waypoint, _x.use_orientation, _x.max_velocity.linear.x, _x.max_velocity.linear.y, _x.max_velocity.linear.z, _x.max_velocity.angular.x, _x.max_velocity.angular.y, _x.max_velocity.angular.z, _x.max_acceleration.linear.x, _x.max_acceleration.linear.y, _x.max_acceleration.linear.z, _x.max_acceleration.angular.x, _x.max_acceleration.angular.y, _x.max_acceleration.angular.z, _x.motion_area.header.seq, _x.motion_area.header.stamp.secs, _x.motion_area.header.stamp.nsecs))
      _x = self.motion_area.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.motion_area.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.motion_area.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_2i().pack(_x.sequence.sequence_number, _x.sequence.length))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.robot_id is None:
        self.robot_id = opil_v2.msg.Id()
      if self.point_id is None:
        self.point_id = opil_v2.msg.Id()
      if self.task_id is None:
        self.task_id = opil_v2.msg.Id()
      if self.motion_id is None:
        self.motion_id = opil_v2.msg.Id()
      if self.point is None:
        self.point = geometry_msgs.msg.Pose2D()
      if self.max_velocity is None:
        self.max_velocity = geometry_msgs.msg.Twist()
      if self.max_acceleration is None:
        self.max_acceleration = geometry_msgs.msg.Accel()
      if self.motion_area is None:
        self.motion_area = geometry_msgs.msg.PolygonStamped()
      if self.sequence is None:
        self.sequence = opil_v2.msg.Sequence()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.robot_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_id.description = str[start:end].decode('utf-8')
      else:
        self.robot_id.description = str[start:end]
      start = end
      end += 4
      (self.point_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.point_id.description = str[start:end].decode('utf-8')
      else:
        self.point_id.description = str[start:end]
      start = end
      end += 4
      (self.task_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.task_id.description = str[start:end].decode('utf-8')
      else:
        self.task_id.description = str[start:end]
      start = end
      end += 4
      (self.motion_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.motion_id.description = str[start:end].decode('utf-8')
      else:
        self.motion_id.description = str[start:end]
      _x = self
      start = end
      end += 134
      (_x.point.x, _x.point.y, _x.point.theta, _x.is_waypoint, _x.use_orientation, _x.max_velocity.linear.x, _x.max_velocity.linear.y, _x.max_velocity.linear.z, _x.max_velocity.angular.x, _x.max_velocity.angular.y, _x.max_velocity.angular.z, _x.max_acceleration.linear.x, _x.max_acceleration.linear.y, _x.max_acceleration.linear.z, _x.max_acceleration.angular.x, _x.max_acceleration.angular.y, _x.max_acceleration.angular.z, _x.motion_area.header.seq, _x.motion_area.header.stamp.secs, _x.motion_area.header.stamp.nsecs,) = _get_struct_3d2B12d3I().unpack(str[start:end])
      self.is_waypoint = bool(self.is_waypoint)
      self.use_orientation = bool(self.use_orientation)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.motion_area.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.motion_area.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.motion_area.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.motion_area.polygon.points.append(val1)
      _x = self
      start = end
      end += 8
      (_x.sequence.sequence_number, _x.sequence.length,) = _get_struct_2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.robot_id.id))
      _x = self.robot_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.point_id.id))
      _x = self.point_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.task_id.id))
      _x = self.task_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.motion_id.id))
      _x = self.motion_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d2B12d3I().pack(_x.point.x, _x.point.y, _x.point.theta, _x.is_waypoint, _x.use_orientation, _x.max_velocity.linear.x, _x.max_velocity.linear.y, _x.max_velocity.linear.z, _x.max_velocity.angular.x, _x.max_velocity.angular.y, _x.max_velocity.angular.z, _x.max_acceleration.linear.x, _x.max_acceleration.linear.y, _x.max_acceleration.linear.z, _x.max_acceleration.angular.x, _x.max_acceleration.angular.y, _x.max_acceleration.angular.z, _x.motion_area.header.seq, _x.motion_area.header.stamp.secs, _x.motion_area.header.stamp.nsecs))
      _x = self.motion_area.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.motion_area.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.motion_area.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_2i().pack(_x.sequence.sequence_number, _x.sequence.length))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.robot_id is None:
        self.robot_id = opil_v2.msg.Id()
      if self.point_id is None:
        self.point_id = opil_v2.msg.Id()
      if self.task_id is None:
        self.task_id = opil_v2.msg.Id()
      if self.motion_id is None:
        self.motion_id = opil_v2.msg.Id()
      if self.point is None:
        self.point = geometry_msgs.msg.Pose2D()
      if self.max_velocity is None:
        self.max_velocity = geometry_msgs.msg.Twist()
      if self.max_acceleration is None:
        self.max_acceleration = geometry_msgs.msg.Accel()
      if self.motion_area is None:
        self.motion_area = geometry_msgs.msg.PolygonStamped()
      if self.sequence is None:
        self.sequence = opil_v2.msg.Sequence()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.robot_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_id.description = str[start:end].decode('utf-8')
      else:
        self.robot_id.description = str[start:end]
      start = end
      end += 4
      (self.point_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.point_id.description = str[start:end].decode('utf-8')
      else:
        self.point_id.description = str[start:end]
      start = end
      end += 4
      (self.task_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.task_id.description = str[start:end].decode('utf-8')
      else:
        self.task_id.description = str[start:end]
      start = end
      end += 4
      (self.motion_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.motion_id.description = str[start:end].decode('utf-8')
      else:
        self.motion_id.description = str[start:end]
      _x = self
      start = end
      end += 134
      (_x.point.x, _x.point.y, _x.point.theta, _x.is_waypoint, _x.use_orientation, _x.max_velocity.linear.x, _x.max_velocity.linear.y, _x.max_velocity.linear.z, _x.max_velocity.angular.x, _x.max_velocity.angular.y, _x.max_velocity.angular.z, _x.max_acceleration.linear.x, _x.max_acceleration.linear.y, _x.max_acceleration.linear.z, _x.max_acceleration.angular.x, _x.max_acceleration.angular.y, _x.max_acceleration.angular.z, _x.motion_area.header.seq, _x.motion_area.header.stamp.secs, _x.motion_area.header.stamp.nsecs,) = _get_struct_3d2B12d3I().unpack(str[start:end])
      self.is_waypoint = bool(self.is_waypoint)
      self.use_orientation = bool(self.use_orientation)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.motion_area.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.motion_area.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.motion_area.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.motion_area.polygon.points.append(val1)
      _x = self
      start = end
      end += 8
      (_x.sequence.sequence_number, _x.sequence.length,) = _get_struct_2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3d2B12d3I = None
def _get_struct_3d2B12d3I():
    global _struct_3d2B12d3I
    if _struct_3d2B12d3I is None:
        _struct_3d2B12d3I = struct.Struct("<3d2B12d3I")
    return _struct_3d2B12d3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
