# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lcr_shared/databaseRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class databaseRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "lcr_shared/databaseRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(databaseRequest, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lcr_shared/databaseResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import lcr_shared.msg

class databaseResponse(genpy.Message):
  _md5sum = "2852c5aabf45e25b23b8821ac51dc772"
  _type = "lcr_shared/databaseResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """lcr_shared/VirtualObjectsAndPaths db

================================================================================
MSG: lcr_shared/VirtualObjectsAndPaths
int32 version

int8 OBJECTTYPE_TAG = -3
int8 OBJECTTYPE_RECHARGE_WAYPOINT = -2
int8 OBJECTTYPE_NONE = -1
int8 OBJECTTYPE_OBSTACLE = 0
int8 OBJECTTYPE_CHARGEPOINT = 1
int8 OBJECTTYPE_CHECKPOINT = 2
int8 OBJECTTYPE_SPEED_LIMIT_ZONE = 3
int8 OBJECTTYPE_NO_DISTANCE_ZONE = 4

int8 SHAPETYPE_NONE = -1
int8 SHAPETYPE_LINE = 0
int8 SHAPETYPE_RECTANGLE = 1
int8 SHAPETYPE_CIRCLE = 2
int8 SHAPETYPE_POLYGON = 3

int32[] virtualObjects_Id
string[] virtualObjects_Name
int8[] virtualObjects_ObjectType
int32[] virtualObjects_PositionX
int32[] virtualObjects_PositionY
float64[] virtualObjects_Rotation
int8[] virtualObjects_ShapeType

int8 PATHTYPE_LINEPATH = 0
int8 PATHTYPE_CURVEPATH = 1

int8 PATHDIRECTION_TWO_WAY = 0
int8 PATHDIRECTION_FROM_A_TO_B = 1
int8 PATHDIRECTION_FROM_B_TO_A = 2
int8 PATHDIRECTION_ALTERNATING_ONE_WAY = 3

int32[] paths_Id
int32[] paths_CurvePointX
int32[] paths_CurvePointY
int32[] paths_Direction
int32[] paths_EndPoint
string[] paths_Name
int8[] paths_PathType
int32[] paths_StartPoint"""
  __slots__ = ['db']
  _slot_types = ['lcr_shared/VirtualObjectsAndPaths']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       db

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(databaseResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.db is None:
        self.db = lcr_shared.msg.VirtualObjectsAndPaths()
    else:
      self.db = lcr_shared.msg.VirtualObjectsAndPaths()

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
      buff.write(_get_struct_i().pack(self.db.version))
      length = len(self.db.virtualObjects_Id)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.db.virtualObjects_Id))
      length = len(self.db.virtualObjects_Name)
      buff.write(_struct_I.pack(length))
      for val1 in self.db.virtualObjects_Name:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.db.virtualObjects_ObjectType)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.pack(pattern, *self.db.virtualObjects_ObjectType))
      length = len(self.db.virtualObjects_PositionX)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.db.virtualObjects_PositionX))
      length = len(self.db.virtualObjects_PositionY)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.db.virtualObjects_PositionY))
      length = len(self.db.virtualObjects_Rotation)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.db.virtualObjects_Rotation))
      length = len(self.db.virtualObjects_ShapeType)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.pack(pattern, *self.db.virtualObjects_ShapeType))
      length = len(self.db.paths_Id)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.db.paths_Id))
      length = len(self.db.paths_CurvePointX)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.db.paths_CurvePointX))
      length = len(self.db.paths_CurvePointY)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.db.paths_CurvePointY))
      length = len(self.db.paths_Direction)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.db.paths_Direction))
      length = len(self.db.paths_EndPoint)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.db.paths_EndPoint))
      length = len(self.db.paths_Name)
      buff.write(_struct_I.pack(length))
      for val1 in self.db.paths_Name:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.db.paths_PathType)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.pack(pattern, *self.db.paths_PathType))
      length = len(self.db.paths_StartPoint)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.db.paths_StartPoint))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.db is None:
        self.db = lcr_shared.msg.VirtualObjectsAndPaths()
      end = 0
      start = end
      end += 4
      (self.db.version,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_Id = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.db.virtualObjects_Name = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.db.virtualObjects_Name.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_ObjectType = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_PositionX = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_PositionY = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_Rotation = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_ShapeType = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_Id = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_CurvePointX = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_CurvePointY = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_Direction = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_EndPoint = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.db.paths_Name = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.db.paths_Name.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_PathType = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_StartPoint = struct.unpack(pattern, str[start:end])
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
      buff.write(_get_struct_i().pack(self.db.version))
      length = len(self.db.virtualObjects_Id)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.db.virtualObjects_Id.tostring())
      length = len(self.db.virtualObjects_Name)
      buff.write(_struct_I.pack(length))
      for val1 in self.db.virtualObjects_Name:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.db.virtualObjects_ObjectType)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.db.virtualObjects_ObjectType.tostring())
      length = len(self.db.virtualObjects_PositionX)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.db.virtualObjects_PositionX.tostring())
      length = len(self.db.virtualObjects_PositionY)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.db.virtualObjects_PositionY.tostring())
      length = len(self.db.virtualObjects_Rotation)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.db.virtualObjects_Rotation.tostring())
      length = len(self.db.virtualObjects_ShapeType)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.db.virtualObjects_ShapeType.tostring())
      length = len(self.db.paths_Id)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.db.paths_Id.tostring())
      length = len(self.db.paths_CurvePointX)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.db.paths_CurvePointX.tostring())
      length = len(self.db.paths_CurvePointY)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.db.paths_CurvePointY.tostring())
      length = len(self.db.paths_Direction)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.db.paths_Direction.tostring())
      length = len(self.db.paths_EndPoint)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.db.paths_EndPoint.tostring())
      length = len(self.db.paths_Name)
      buff.write(_struct_I.pack(length))
      for val1 in self.db.paths_Name:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.db.paths_PathType)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.db.paths_PathType.tostring())
      length = len(self.db.paths_StartPoint)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.db.paths_StartPoint.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.db is None:
        self.db = lcr_shared.msg.VirtualObjectsAndPaths()
      end = 0
      start = end
      end += 4
      (self.db.version,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_Id = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.db.virtualObjects_Name = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.db.virtualObjects_Name.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_ObjectType = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_PositionX = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_PositionY = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_Rotation = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.virtualObjects_ShapeType = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_Id = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_CurvePointX = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_CurvePointY = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_Direction = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_EndPoint = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.db.paths_Name = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.db.paths_Name.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_PathType = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.db.paths_StartPoint = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
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
class database(object):
  _type          = 'lcr_shared/database'
  _md5sum = '2852c5aabf45e25b23b8821ac51dc772'
  _request_class  = databaseRequest
  _response_class = databaseResponse
