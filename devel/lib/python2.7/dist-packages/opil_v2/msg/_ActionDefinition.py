# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from opil_v2/ActionDefinition.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import opil_v2.msg
import std_msgs.msg

class ActionDefinition(genpy.Message):
  _md5sum = "251964ecde4dcc6d2653784d4aa1be70"
  _type = "opil_v2/ActionDefinition"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# Message for the definition of an Action
std_msgs/Header header
Id robot_id
Id action_id
Id task_id
#definition of the action
RobotAction action


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
MSG: opil_v2/RobotAction
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
Tuple[] attributes
# Optional description of the action. E.g.: unload left
string description


================================================================================
MSG: opil_v2/Tuple
string type
string name
string value

"""
  __slots__ = ['header','robot_id','action_id','task_id','action']
  _slot_types = ['std_msgs/Header','opil_v2/Id','opil_v2/Id','opil_v2/Id','opil_v2/RobotAction']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,robot_id,action_id,task_id,action

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ActionDefinition, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.robot_id is None:
        self.robot_id = opil_v2.msg.Id()
      if self.action_id is None:
        self.action_id = opil_v2.msg.Id()
      if self.task_id is None:
        self.task_id = opil_v2.msg.Id()
      if self.action is None:
        self.action = opil_v2.msg.RobotAction()
    else:
      self.header = std_msgs.msg.Header()
      self.robot_id = opil_v2.msg.Id()
      self.action_id = opil_v2.msg.Id()
      self.task_id = opil_v2.msg.Id()
      self.action = opil_v2.msg.RobotAction()

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
      buff.write(_get_struct_I().pack(self.action_id.id))
      _x = self.action_id.description
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
      _x = self
      buff.write(_get_struct_2B().pack(_x.action.category, _x.action.action))
      length = len(self.action.attributes)
      buff.write(_struct_I.pack(length))
      for val1 in self.action.attributes:
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.value
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.action.description
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.robot_id is None:
        self.robot_id = opil_v2.msg.Id()
      if self.action_id is None:
        self.action_id = opil_v2.msg.Id()
      if self.task_id is None:
        self.task_id = opil_v2.msg.Id()
      if self.action is None:
        self.action = opil_v2.msg.RobotAction()
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
      (self.action_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_id.description = str[start:end].decode('utf-8')
      else:
        self.action_id.description = str[start:end]
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
      _x = self
      start = end
      end += 2
      (_x.action.category, _x.action.action,) = _get_struct_2B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action.attributes = []
      for i in range(0, length):
        val1 = opil_v2.msg.Tuple()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8')
        else:
          val1.type = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.value = str[start:end].decode('utf-8')
        else:
          val1.value = str[start:end]
        self.action.attributes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action.description = str[start:end].decode('utf-8')
      else:
        self.action.description = str[start:end]
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
      buff.write(_get_struct_I().pack(self.action_id.id))
      _x = self.action_id.description
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
      _x = self
      buff.write(_get_struct_2B().pack(_x.action.category, _x.action.action))
      length = len(self.action.attributes)
      buff.write(_struct_I.pack(length))
      for val1 in self.action.attributes:
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.value
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.action.description
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.robot_id is None:
        self.robot_id = opil_v2.msg.Id()
      if self.action_id is None:
        self.action_id = opil_v2.msg.Id()
      if self.task_id is None:
        self.task_id = opil_v2.msg.Id()
      if self.action is None:
        self.action = opil_v2.msg.RobotAction()
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
      (self.action_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_id.description = str[start:end].decode('utf-8')
      else:
        self.action_id.description = str[start:end]
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
      _x = self
      start = end
      end += 2
      (_x.action.category, _x.action.action,) = _get_struct_2B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.action.attributes = []
      for i in range(0, length):
        val1 = opil_v2.msg.Tuple()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8')
        else:
          val1.type = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.value = str[start:end].decode('utf-8')
        else:
          val1.value = str[start:end]
        self.action.attributes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action.description = str[start:end].decode('utf-8')
      else:
        self.action.description = str[start:end]
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
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
