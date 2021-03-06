# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mars_agent_physical_robot_msgs/ActionAssignment.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mars_common_msgs.msg
import mars_agent_physical_robot_msgs.msg

class ActionAssignment(genpy.Message):
  _md5sum = "efed3373da3eca18595f4459a9e9b329"
  _type = "mars_agent_physical_robot_msgs/ActionAssignment"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Message for the definition of an Action
mars_common_msgs/Id robot_id
mars_common_msgs/Id action_id
mars_common_msgs/Id task_id
# Position of the action within the order
Sequence sequence
RobotAction robot_action

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
MSG: mars_agent_physical_robot_msgs/Sequence
# Message for defining a sequence.

# Actual position in the sequence. The sequence starts at 1! 
int32 sequence_number
# Overall lenght of the sequence
int32 length

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
  __slots__ = ['robot_id','action_id','task_id','sequence','robot_action']
  _slot_types = ['mars_common_msgs/Id','mars_common_msgs/Id','mars_common_msgs/Id','mars_agent_physical_robot_msgs/Sequence','mars_agent_physical_robot_msgs/RobotAction']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       robot_id,action_id,task_id,sequence,robot_action

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ActionAssignment, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.robot_id is None:
        self.robot_id = mars_common_msgs.msg.Id()
      if self.action_id is None:
        self.action_id = mars_common_msgs.msg.Id()
      if self.task_id is None:
        self.task_id = mars_common_msgs.msg.Id()
      if self.sequence is None:
        self.sequence = mars_agent_physical_robot_msgs.msg.Sequence()
      if self.robot_action is None:
        self.robot_action = mars_agent_physical_robot_msgs.msg.RobotAction()
    else:
      self.robot_id = mars_common_msgs.msg.Id()
      self.action_id = mars_common_msgs.msg.Id()
      self.task_id = mars_common_msgs.msg.Id()
      self.sequence = mars_agent_physical_robot_msgs.msg.Sequence()
      self.robot_action = mars_agent_physical_robot_msgs.msg.RobotAction()

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
      _x = self.action_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.action_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.task_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.task_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2i2B().pack(_x.sequence.sequence_number, _x.sequence.length, _x.robot_action.category, _x.robot_action.action))
      length = len(self.robot_action.attributes)
      buff.write(_struct_I.pack(length))
      for val1 in self.robot_action.attributes:
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
      _x = self.robot_action.description
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
      if self.action_id is None:
        self.action_id = mars_common_msgs.msg.Id()
      if self.task_id is None:
        self.task_id = mars_common_msgs.msg.Id()
      if self.sequence is None:
        self.sequence = mars_agent_physical_robot_msgs.msg.Sequence()
      if self.robot_action is None:
        self.robot_action = mars_agent_physical_robot_msgs.msg.RobotAction()
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
      start = end
      end += 16
      self.action_id.uuid = str[start:end]
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
      end += 16
      self.task_id.uuid = str[start:end]
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
      end += 10
      (_x.sequence.sequence_number, _x.sequence.length, _x.robot_action.category, _x.robot_action.action,) = _get_struct_2i2B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robot_action.attributes = []
      for i in range(0, length):
        val1 = mars_common_msgs.msg.Tuple()
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
        self.robot_action.attributes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_action.description = str[start:end].decode('utf-8')
      else:
        self.robot_action.description = str[start:end]
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
      _x = self.action_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.action_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.task_id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self.task_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2i2B().pack(_x.sequence.sequence_number, _x.sequence.length, _x.robot_action.category, _x.robot_action.action))
      length = len(self.robot_action.attributes)
      buff.write(_struct_I.pack(length))
      for val1 in self.robot_action.attributes:
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
      _x = self.robot_action.description
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
      if self.action_id is None:
        self.action_id = mars_common_msgs.msg.Id()
      if self.task_id is None:
        self.task_id = mars_common_msgs.msg.Id()
      if self.sequence is None:
        self.sequence = mars_agent_physical_robot_msgs.msg.Sequence()
      if self.robot_action is None:
        self.robot_action = mars_agent_physical_robot_msgs.msg.RobotAction()
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
      start = end
      end += 16
      self.action_id.uuid = str[start:end]
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
      end += 16
      self.task_id.uuid = str[start:end]
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
      end += 10
      (_x.sequence.sequence_number, _x.sequence.length, _x.robot_action.category, _x.robot_action.action,) = _get_struct_2i2B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robot_action.attributes = []
      for i in range(0, length):
        val1 = mars_common_msgs.msg.Tuple()
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
        self.robot_action.attributes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_action.description = str[start:end].decode('utf-8')
      else:
        self.robot_action.description = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i2B = None
def _get_struct_2i2B():
    global _struct_2i2B
    if _struct_2i2B is None:
        _struct_2i2B = struct.Struct("<2i2B")
    return _struct_2i2B
_struct_16B = None
def _get_struct_16B():
    global _struct_16B
    if _struct_16B is None:
        _struct_16B = struct.Struct("<16B")
    return _struct_16B
_struct_16s = None
def _get_struct_16s():
    global _struct_16s
    if _struct_16s is None:
        _struct_16s = struct.Struct("<16s")
    return _struct_16s
