# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mars_agent_physical_robot_msgs/RobotAgentProperties.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mars_common_msgs.msg
import geometry_msgs.msg
import mars_agent_physical_robot_msgs.msg
import std_msgs.msg

class RobotAgentProperties(genpy.Message):
  _md5sum = "44f789db54776ca317c570895c1f3583"
  _type = "mars_agent_physical_robot_msgs/RobotAgentProperties"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """mars_common_msgs/Id robot_id
VehicleType type
geometry_msgs/PolygonStamped footprint
float32 min_height
float32 max_height
float32 payload
float32 max_pos_x_vel
float32 max_neg_x_vel
float32 max_pos_x_acc
float32 max_neg_x_acc
float32 max_pos_y_vel
float32 max_neg_y_vel
float32 max_pos_y_acc
float32 max_neg_y_acc
float32 max_pos_ang_vel
float32 max_neg_ang_vel
float32 max_pos_ang_acc
float32 max_neg_ang_acc
float32 velocity_control_sensitivity
float32 min_turning_radius
float32 batt_capacity
float32 batt_max_voltage
float32 weight
string vendor 
RobotAction[] action_capability

================================================================================
MSG: mars_common_msgs/Id
# Universally Unique Identifier (UUID)
# A UUID is a 128-bit number used to identify information in computer systems. 
# The term globally unique identifier (GUID) is also used. 
# More information: https://en.wikipedia.org/wiki/Universally_unique_identifier
uint8[16] uuid

# optional description of the id
# description can be:
#   - a name
#   - what is descriped by the id
#   - etc.
string description

================================================================================
MSG: mars_agent_physical_robot_msgs/VehicleType
# supported vehicle_types
uint8 VEHICLE_TYPE_UNKNOWN=0
# TODO:add correct vehicle_types!
uint8 VEHICLE_TYPE_SUPPLY_VEHICLE=1
uint8 VEHICLE_TYPE_ASSEMBLY_VEHICLE=2

# type of the vehicle
uint8 vehicle_type

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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
MSG: mars_agent_physical_robot_msgs/RobotAction
# definition of all the possible actionsmars_agent_physical_robot_msgs
uint8 CATEGORY_UNDEFINED = 0
uint8 CATEGORY_NONE = 5
uint8 CATEGORY_LOAD = 10
uint8 CATEGORY_MANUAL_LOAD_START = 11
uint8 CATEGORY_MANUAL_LOAD_DONE = 12
uint8 CATEGORY_UNLOAD = 20
uint8 CATEGORY_MANUAL_UNLOAD_START = 21
uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22
uint8 CATEGORY_START_CHARGING = 30
uint8 CATEGORY_STOP_CHARGING = 31
# ...


# Category of the action which has to be performed
uint8 category
# Defines the robot specific action which has to be performed. 
# The specific actions must be defined by manufacturer. 
uint8 action
mars_common_msgs/Tuple[] attributes
# Optional description of the action. E.g.: unload left
string description


================================================================================
MSG: mars_common_msgs/Tuple
string type
string name
string value"""
  __slots__ = ['robot_id','type','footprint','min_height','max_height','payload','max_pos_x_vel','max_neg_x_vel','max_pos_x_acc','max_neg_x_acc','max_pos_y_vel','max_neg_y_vel','max_pos_y_acc','max_neg_y_acc','max_pos_ang_vel','max_neg_ang_vel','max_pos_ang_acc','max_neg_ang_acc','velocity_control_sensitivity','min_turning_radius','batt_capacity','batt_max_voltage','weight','vendor','action_capability']
  _slot_types = ['mars_common_msgs/Id','mars_agent_physical_robot_msgs/VehicleType','geometry_msgs/PolygonStamped','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','string','mars_agent_physical_robot_msgs/RobotAction[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       robot_id,type,footprint,min_height,max_height,payload,max_pos_x_vel,max_neg_x_vel,max_pos_x_acc,max_neg_x_acc,max_pos_y_vel,max_neg_y_vel,max_pos_y_acc,max_neg_y_acc,max_pos_ang_vel,max_neg_ang_vel,max_pos_ang_acc,max_neg_ang_acc,velocity_control_sensitivity,min_turning_radius,batt_capacity,batt_max_voltage,weight,vendor,action_capability

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotAgentProperties, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.robot_id is None:
        self.robot_id = mars_common_msgs.msg.Id()
      if self.type is None:
        self.type = mars_agent_physical_robot_msgs.msg.VehicleType()
      if self.footprint is None:
        self.footprint = geometry_msgs.msg.PolygonStamped()
      if self.min_height is None:
        self.min_height = 0.
      if self.max_height is None:
        self.max_height = 0.
      if self.payload is None:
        self.payload = 0.
      if self.max_pos_x_vel is None:
        self.max_pos_x_vel = 0.
      if self.max_neg_x_vel is None:
        self.max_neg_x_vel = 0.
      if self.max_pos_x_acc is None:
        self.max_pos_x_acc = 0.
      if self.max_neg_x_acc is None:
        self.max_neg_x_acc = 0.
      if self.max_pos_y_vel is None:
        self.max_pos_y_vel = 0.
      if self.max_neg_y_vel is None:
        self.max_neg_y_vel = 0.
      if self.max_pos_y_acc is None:
        self.max_pos_y_acc = 0.
      if self.max_neg_y_acc is None:
        self.max_neg_y_acc = 0.
      if self.max_pos_ang_vel is None:
        self.max_pos_ang_vel = 0.
      if self.max_neg_ang_vel is None:
        self.max_neg_ang_vel = 0.
      if self.max_pos_ang_acc is None:
        self.max_pos_ang_acc = 0.
      if self.max_neg_ang_acc is None:
        self.max_neg_ang_acc = 0.
      if self.velocity_control_sensitivity is None:
        self.velocity_control_sensitivity = 0.
      if self.min_turning_radius is None:
        self.min_turning_radius = 0.
      if self.batt_capacity is None:
        self.batt_capacity = 0.
      if self.batt_max_voltage is None:
        self.batt_max_voltage = 0.
      if self.weight is None:
        self.weight = 0.
      if self.vendor is None:
        self.vendor = ''
      if self.action_capability is None:
        self.action_capability = []
    else:
      self.robot_id = mars_common_msgs.msg.Id()
      self.type = mars_agent_physical_robot_msgs.msg.VehicleType()
      self.footprint = geometry_msgs.msg.PolygonStamped()
      self.min_height = 0.
      self.max_height = 0.
      self.payload = 0.
      self.max_pos_x_vel = 0.
      self.max_neg_x_vel = 0.
      self.max_pos_x_acc = 0.
      self.max_neg_x_acc = 0.
      self.max_pos_y_vel = 0.
      self.max_neg_y_vel = 0.
      self.max_pos_y_acc = 0.
      self.max_neg_y_acc = 0.
      self.max_pos_ang_vel = 0.
      self.max_neg_ang_vel = 0.
      self.max_pos_ang_acc = 0.
      self.max_neg_ang_acc = 0.
      self.velocity_control_sensitivity = 0.
      self.min_turning_radius = 0.
      self.batt_capacity = 0.
      self.batt_max_voltage = 0.
      self.weight = 0.
      self.vendor = ''
      self.action_capability = []

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
      _x = self.robot_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.robot_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.type.vehicle_type, _x.footprint.header.seq, _x.footprint.header.stamp.secs, _x.footprint.header.stamp.nsecs))
      _x = self.footprint.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.footprint.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.footprint.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_20f().pack(_x.min_height, _x.max_height, _x.payload, _x.max_pos_x_vel, _x.max_neg_x_vel, _x.max_pos_x_acc, _x.max_neg_x_acc, _x.max_pos_y_vel, _x.max_neg_y_vel, _x.max_pos_y_acc, _x.max_neg_y_acc, _x.max_pos_ang_vel, _x.max_neg_ang_vel, _x.max_pos_ang_acc, _x.max_neg_ang_acc, _x.velocity_control_sensitivity, _x.min_turning_radius, _x.batt_capacity, _x.batt_max_voltage, _x.weight))
      _x = self.vendor
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.action_capability)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_capability:
        _x = val1
        buff.write(_get_struct_2B().pack(_x.category, _x.action))
        length = len(val1.attributes)
        buff.write(_struct_I.pack(length))
        for val2 in val1.attributes:
          _x = val2.type
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val2.name
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val2.value
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.description
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.robot_id is None:
        self.robot_id = mars_common_msgs.msg.Id()
      if self.type is None:
        self.type = mars_agent_physical_robot_msgs.msg.VehicleType()
      if self.footprint is None:
        self.footprint = geometry_msgs.msg.PolygonStamped()
      if self.action_capability is None:
        self.action_capability = None
      end = 0
      start = end
      end += 16
      self.robot_id.uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_id.description = str[start:end].decode('utf-8')
      else:
        self.robot_id.description = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.type.vehicle_type, _x.footprint.header.seq, _x.footprint.header.stamp.secs, _x.footprint.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.footprint.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.footprint.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.footprint.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.footprint.polygon.points.append(val1)
      _x = self
      start = end
      end += 80
      (_x.min_height, _x.max_height, _x.payload, _x.max_pos_x_vel, _x.max_neg_x_vel, _x.max_pos_x_acc, _x.max_neg_x_acc, _x.max_pos_y_vel, _x.max_neg_y_vel, _x.max_pos_y_acc, _x.max_neg_y_acc, _x.max_pos_ang_vel, _x.max_neg_ang_vel, _x.max_pos_ang_acc, _x.max_neg_ang_acc, _x.velocity_control_sensitivity, _x.min_turning_radius, _x.batt_capacity, _x.batt_max_voltage, _x.weight,) = _get_struct_20f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.vendor = str[start:end].decode('utf-8')
      else:
        self.vendor = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_capability = []
      for i in range(0, length):
        val1 = mars_agent_physical_robot_msgs.msg.RobotAction()
        _x = val1
        start = end
        end += 2
        (_x.category, _x.action,) = _get_struct_2B().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.attributes = []
        for i in range(0, length):
          val2 = mars_common_msgs.msg.Tuple()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.type = str[start:end].decode('utf-8')
          else:
            val2.type = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.name = str[start:end].decode('utf-8')
          else:
            val2.name = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.value = str[start:end].decode('utf-8')
          else:
            val2.value = str[start:end]
          val1.attributes.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.description = str[start:end].decode('utf-8')
        else:
          val1.description = str[start:end]
        self.action_capability.append(val1)
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
      _x = self.robot_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.robot_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.type.vehicle_type, _x.footprint.header.seq, _x.footprint.header.stamp.secs, _x.footprint.header.stamp.nsecs))
      _x = self.footprint.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.footprint.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.footprint.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_20f().pack(_x.min_height, _x.max_height, _x.payload, _x.max_pos_x_vel, _x.max_neg_x_vel, _x.max_pos_x_acc, _x.max_neg_x_acc, _x.max_pos_y_vel, _x.max_neg_y_vel, _x.max_pos_y_acc, _x.max_neg_y_acc, _x.max_pos_ang_vel, _x.max_neg_ang_vel, _x.max_pos_ang_acc, _x.max_neg_ang_acc, _x.velocity_control_sensitivity, _x.min_turning_radius, _x.batt_capacity, _x.batt_max_voltage, _x.weight))
      _x = self.vendor
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.action_capability)
      buff.write(_struct_I.pack(length))
      for val1 in self.action_capability:
        _x = val1
        buff.write(_get_struct_2B().pack(_x.category, _x.action))
        length = len(val1.attributes)
        buff.write(_struct_I.pack(length))
        for val2 in val1.attributes:
          _x = val2.type
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val2.name
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val2.value
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.description
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.robot_id is None:
        self.robot_id = mars_common_msgs.msg.Id()
      if self.type is None:
        self.type = mars_agent_physical_robot_msgs.msg.VehicleType()
      if self.footprint is None:
        self.footprint = geometry_msgs.msg.PolygonStamped()
      if self.action_capability is None:
        self.action_capability = None
      end = 0
      start = end
      end += 16
      self.robot_id.uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_id.description = str[start:end].decode('utf-8')
      else:
        self.robot_id.description = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.type.vehicle_type, _x.footprint.header.seq, _x.footprint.header.stamp.secs, _x.footprint.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.footprint.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.footprint.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.footprint.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.footprint.polygon.points.append(val1)
      _x = self
      start = end
      end += 80
      (_x.min_height, _x.max_height, _x.payload, _x.max_pos_x_vel, _x.max_neg_x_vel, _x.max_pos_x_acc, _x.max_neg_x_acc, _x.max_pos_y_vel, _x.max_neg_y_vel, _x.max_pos_y_acc, _x.max_neg_y_acc, _x.max_pos_ang_vel, _x.max_neg_ang_vel, _x.max_pos_ang_acc, _x.max_neg_ang_acc, _x.velocity_control_sensitivity, _x.min_turning_radius, _x.batt_capacity, _x.batt_max_voltage, _x.weight,) = _get_struct_20f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.vendor = str[start:end].decode('utf-8')
      else:
        self.vendor = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action_capability = []
      for i in range(0, length):
        val1 = mars_agent_physical_robot_msgs.msg.RobotAction()
        _x = val1
        start = end
        end += 2
        (_x.category, _x.action,) = _get_struct_2B().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.attributes = []
        for i in range(0, length):
          val2 = mars_common_msgs.msg.Tuple()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.type = str[start:end].decode('utf-8')
          else:
            val2.type = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.name = str[start:end].decode('utf-8')
          else:
            val2.name = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.value = str[start:end].decode('utf-8')
          else:
            val2.value = str[start:end]
          val1.attributes.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.description = str[start:end].decode('utf-8')
        else:
          val1.description = str[start:end]
        self.action_capability.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_16B = None
def _get_struct_16B():
    global _struct_16B
    if _struct_16B is None:
        _struct_16B = struct.Struct("<16B")
    return _struct_16B
_struct_B3I = None
def _get_struct_B3I():
    global _struct_B3I
    if _struct_B3I is None:
        _struct_B3I = struct.Struct("<B3I")
    return _struct_B3I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_20f = None
def _get_struct_20f():
    global _struct_20f
    if _struct_20f is None:
        _struct_20f = struct.Struct("<20f")
    return _struct_20f
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_16s = None
def _get_struct_16s():
    global _struct_16s
    if _struct_16s is None:
        _struct_16s = struct.Struct("<16s")
    return _struct_16s