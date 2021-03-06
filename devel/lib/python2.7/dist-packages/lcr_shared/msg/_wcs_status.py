# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lcr_shared/wcs_status.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class wcs_status(genpy.Message):
  _md5sum = "4fe2a2cc15ab59605464b4b1259d9135"
  _type = "lcr_shared/wcs_status"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 virtual_object_version_id
string mission_id
Header wcs_adapter_ros_header
int8 status
int8 error_type #0 no error
string error_id
Header error_header
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
"""
  __slots__ = ['virtual_object_version_id','mission_id','wcs_adapter_ros_header','status','error_type','error_id','error_header']
  _slot_types = ['int32','string','std_msgs/Header','int8','int8','string','std_msgs/Header']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       virtual_object_version_id,mission_id,wcs_adapter_ros_header,status,error_type,error_id,error_header

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(wcs_status, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.virtual_object_version_id is None:
        self.virtual_object_version_id = 0
      if self.mission_id is None:
        self.mission_id = ''
      if self.wcs_adapter_ros_header is None:
        self.wcs_adapter_ros_header = std_msgs.msg.Header()
      if self.status is None:
        self.status = 0
      if self.error_type is None:
        self.error_type = 0
      if self.error_id is None:
        self.error_id = ''
      if self.error_header is None:
        self.error_header = std_msgs.msg.Header()
    else:
      self.virtual_object_version_id = 0
      self.mission_id = ''
      self.wcs_adapter_ros_header = std_msgs.msg.Header()
      self.status = 0
      self.error_type = 0
      self.error_id = ''
      self.error_header = std_msgs.msg.Header()

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
      buff.write(_get_struct_i().pack(self.virtual_object_version_id))
      _x = self.mission_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.wcs_adapter_ros_header.seq, _x.wcs_adapter_ros_header.stamp.secs, _x.wcs_adapter_ros_header.stamp.nsecs))
      _x = self.wcs_adapter_ros_header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2b().pack(_x.status, _x.error_type))
      _x = self.error_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.error_header.seq, _x.error_header.stamp.secs, _x.error_header.stamp.nsecs))
      _x = self.error_header.frame_id
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
      if self.wcs_adapter_ros_header is None:
        self.wcs_adapter_ros_header = std_msgs.msg.Header()
      if self.error_header is None:
        self.error_header = std_msgs.msg.Header()
      end = 0
      start = end
      end += 4
      (self.virtual_object_version_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mission_id = str[start:end].decode('utf-8')
      else:
        self.mission_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.wcs_adapter_ros_header.seq, _x.wcs_adapter_ros_header.stamp.secs, _x.wcs_adapter_ros_header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.wcs_adapter_ros_header.frame_id = str[start:end].decode('utf-8')
      else:
        self.wcs_adapter_ros_header.frame_id = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.status, _x.error_type,) = _get_struct_2b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.error_id = str[start:end].decode('utf-8')
      else:
        self.error_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.error_header.seq, _x.error_header.stamp.secs, _x.error_header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.error_header.frame_id = str[start:end].decode('utf-8')
      else:
        self.error_header.frame_id = str[start:end]
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
      buff.write(_get_struct_i().pack(self.virtual_object_version_id))
      _x = self.mission_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.wcs_adapter_ros_header.seq, _x.wcs_adapter_ros_header.stamp.secs, _x.wcs_adapter_ros_header.stamp.nsecs))
      _x = self.wcs_adapter_ros_header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2b().pack(_x.status, _x.error_type))
      _x = self.error_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.error_header.seq, _x.error_header.stamp.secs, _x.error_header.stamp.nsecs))
      _x = self.error_header.frame_id
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
      if self.wcs_adapter_ros_header is None:
        self.wcs_adapter_ros_header = std_msgs.msg.Header()
      if self.error_header is None:
        self.error_header = std_msgs.msg.Header()
      end = 0
      start = end
      end += 4
      (self.virtual_object_version_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mission_id = str[start:end].decode('utf-8')
      else:
        self.mission_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.wcs_adapter_ros_header.seq, _x.wcs_adapter_ros_header.stamp.secs, _x.wcs_adapter_ros_header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.wcs_adapter_ros_header.frame_id = str[start:end].decode('utf-8')
      else:
        self.wcs_adapter_ros_header.frame_id = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.status, _x.error_type,) = _get_struct_2b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.error_id = str[start:end].decode('utf-8')
      else:
        self.error_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.error_header.seq, _x.error_header.stamp.secs, _x.error_header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.error_header.frame_id = str[start:end].decode('utf-8')
      else:
        self.error_header.frame_id = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_2b = None
def _get_struct_2b():
    global _struct_2b
    if _struct_2b is None:
        _struct_2b = struct.Struct("<2b")
    return _struct_2b
