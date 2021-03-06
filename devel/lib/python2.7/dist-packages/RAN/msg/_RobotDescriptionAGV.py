# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from RAN/RobotDescriptionAGV.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mars_common_msgs.msg
import mars_agent_physical_robot_msgs.msg

class RobotDescriptionAGV(genpy.Message):
  _md5sum = "bfb2343bc38ab59e121647c30a480bf2"
  _type = "RAN/RobotDescriptionAGV"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 left_size
float32 right_size
float32 front_size
float32 rear_size
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
uint8 vehicle_type
string vendor 
mars_agent_physical_robot_msgs/RobotAction[] action_capability

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
  __slots__ = ['left_size','right_size','front_size','rear_size','min_height','max_height','payload','max_pos_x_vel','max_neg_x_vel','max_pos_x_acc','max_neg_x_acc','max_pos_y_vel','max_neg_y_vel','max_pos_y_acc','max_neg_y_acc','max_pos_ang_vel','max_neg_ang_vel','max_pos_ang_acc','max_neg_ang_acc','velocity_control_sensitivity','min_turning_radius','batt_capacity','batt_max_voltage','vehicle_type','vendor','action_capability']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','uint8','string','mars_agent_physical_robot_msgs/RobotAction[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       left_size,right_size,front_size,rear_size,min_height,max_height,payload,max_pos_x_vel,max_neg_x_vel,max_pos_x_acc,max_neg_x_acc,max_pos_y_vel,max_neg_y_vel,max_pos_y_acc,max_neg_y_acc,max_pos_ang_vel,max_neg_ang_vel,max_pos_ang_acc,max_neg_ang_acc,velocity_control_sensitivity,min_turning_radius,batt_capacity,batt_max_voltage,vehicle_type,vendor,action_capability

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotDescriptionAGV, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.left_size is None:
        self.left_size = 0.
      if self.right_size is None:
        self.right_size = 0.
      if self.front_size is None:
        self.front_size = 0.
      if self.rear_size is None:
        self.rear_size = 0.
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
      if self.vehicle_type is None:
        self.vehicle_type = 0
      if self.vendor is None:
        self.vendor = ''
      if self.action_capability is None:
        self.action_capability = []
    else:
      self.left_size = 0.
      self.right_size = 0.
      self.front_size = 0.
      self.rear_size = 0.
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
      self.vehicle_type = 0
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
      _x = self
      buff.write(_get_struct_23fB().pack(_x.left_size, _x.right_size, _x.front_size, _x.rear_size, _x.min_height, _x.max_height, _x.payload, _x.max_pos_x_vel, _x.max_neg_x_vel, _x.max_pos_x_acc, _x.max_neg_x_acc, _x.max_pos_y_vel, _x.max_neg_y_vel, _x.max_pos_y_acc, _x.max_neg_y_acc, _x.max_pos_ang_vel, _x.max_neg_ang_vel, _x.max_pos_ang_acc, _x.max_neg_ang_acc, _x.velocity_control_sensitivity, _x.min_turning_radius, _x.batt_capacity, _x.batt_max_voltage, _x.vehicle_type))
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
      if self.action_capability is None:
        self.action_capability = None
      end = 0
      _x = self
      start = end
      end += 93
      (_x.left_size, _x.right_size, _x.front_size, _x.rear_size, _x.min_height, _x.max_height, _x.payload, _x.max_pos_x_vel, _x.max_neg_x_vel, _x.max_pos_x_acc, _x.max_neg_x_acc, _x.max_pos_y_vel, _x.max_neg_y_vel, _x.max_pos_y_acc, _x.max_neg_y_acc, _x.max_pos_ang_vel, _x.max_neg_ang_vel, _x.max_pos_ang_acc, _x.max_neg_ang_acc, _x.velocity_control_sensitivity, _x.min_turning_radius, _x.batt_capacity, _x.batt_max_voltage, _x.vehicle_type,) = _get_struct_23fB().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_23fB().pack(_x.left_size, _x.right_size, _x.front_size, _x.rear_size, _x.min_height, _x.max_height, _x.payload, _x.max_pos_x_vel, _x.max_neg_x_vel, _x.max_pos_x_acc, _x.max_neg_x_acc, _x.max_pos_y_vel, _x.max_neg_y_vel, _x.max_pos_y_acc, _x.max_neg_y_acc, _x.max_pos_ang_vel, _x.max_neg_ang_vel, _x.max_pos_ang_acc, _x.max_neg_ang_acc, _x.velocity_control_sensitivity, _x.min_turning_radius, _x.batt_capacity, _x.batt_max_voltage, _x.vehicle_type))
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
      if self.action_capability is None:
        self.action_capability = None
      end = 0
      _x = self
      start = end
      end += 93
      (_x.left_size, _x.right_size, _x.front_size, _x.rear_size, _x.min_height, _x.max_height, _x.payload, _x.max_pos_x_vel, _x.max_neg_x_vel, _x.max_pos_x_acc, _x.max_neg_x_acc, _x.max_pos_y_vel, _x.max_neg_y_vel, _x.max_pos_y_acc, _x.max_neg_y_acc, _x.max_pos_ang_vel, _x.max_neg_ang_vel, _x.max_pos_ang_acc, _x.max_neg_ang_acc, _x.velocity_control_sensitivity, _x.min_turning_radius, _x.batt_capacity, _x.batt_max_voltage, _x.vehicle_type,) = _get_struct_23fB().unpack(str[start:end])
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
_struct_23fB = None
def _get_struct_23fB():
    global _struct_23fB
    if _struct_23fB is None:
        _struct_23fB = struct.Struct("<23fB")
    return _struct_23fB
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
