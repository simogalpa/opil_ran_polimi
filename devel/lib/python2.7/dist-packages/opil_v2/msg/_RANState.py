# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from opil_v2/RANState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import opil_v2.msg
import industrial_msgs.msg
import sensor_msgs.msg
import std_msgs.msg

class RANState(genpy.Message):
  _md5sum = "2dc33cda2b4054bb83982ac7e5fc4fb8"
  _type = "opil_v2/RANState"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# Message defining the Robot Agent Node status 
Header header
Id robot_id
RobotState agv_msg
# RAN status definitions
uint8 READY = 0
uint8 MOVING = 1
uint8 STOPPED = 2
uint8 ran_status # value defined as above


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
MSG: opil_v2/RobotState
# Message defining the Robot / AGV status 
Header header
Id vehicle_id
AssignmentId last_terminated_action
industrial_msgs/RobotStatus robot_status
sensor_msgs/BatteryState battery_state
geometry_msgs/Pose2D current_position
geometry_msgs/Twist current_velocity
geometry_msgs/PolygonStamped footprint

================================================================================
MSG: opil_v2/AssignmentId
# Message for the definition of the ids of an Assignment
uint32 task_id
uint32 action_id
uint32 motion_id

================================================================================
MSG: industrial_msgs/RobotStatus
# The RobotStatus message contains low level status information 
# that is specific to an industrial robot controller

# The header frame ID is not used
Header header

# The robot mode captures the operating mode of the robot.  When in
# manual, remote motion is not possible.
industrial_msgs/RobotMode mode

# Estop status: True if robot is e-stopped.  The drives are disabled
# and motion is not possible.  The e-stop condition must be acknowledged
# and cleared before any motion can begin.
industrial_msgs/TriState e_stopped

# Drive power status: True if drives are powered.  Motion commands will 
# automatically enable the drives if required.  Drive power is not requred
# for possible motion
industrial_msgs/TriState drives_powered

# Motion enabled: True if robot motion is possible.
industrial_msgs/TriState motion_possible

# Motion status: True if robot is in motion, otherwise false
industrial_msgs/TriState in_motion

# Error status: True if there is an error condition on the robot. Motion may
# or may not be affected (see motion_possible)
industrial_msgs/TriState in_error

# Error code: Vendor specific error code (non zero indicates error)
int32 error_code

================================================================================
MSG: industrial_msgs/RobotMode
# The Robot mode message encapsulates the mode/teach state of the robot
# Typically this is controlled by the pendant key switch, but not always

int8 val

# enumerated values
int8 UNKNOWN=-1                 # Unknown or unavailable         
int8 MANUAL=1 			 # Teach OR manual mode
int8 AUTO=2                     # Automatic mode


================================================================================
MSG: industrial_msgs/TriState
# The tri-state captures boolean values with the additional state of unknown

int8 val

# enumerated values

# Unknown or unavailable 
int8 UNKNOWN=-1  

# High state                       
int8 TRUE=1
int8 ON=1
int8 ENABLED=1
int8 HIGH=1
int8 CLOSED=1

# Low state
int8 FALSE=0
int8 OFF=0
int8 DISABLED=0
int8 LOW=0
int8 OPEN=0


================================================================================
MSG: sensor_msgs/BatteryState

# Constants are chosen to match the enums in the linux kernel
# defined in include/linux/power_supply.h as of version 3.7
# The one difference is for style reasons the constants are
# all uppercase not mixed case.

# Power supply status constants
uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0
uint8 POWER_SUPPLY_STATUS_CHARGING = 1
uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2
uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3
uint8 POWER_SUPPLY_STATUS_FULL = 4

# Power supply health constants
uint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0
uint8 POWER_SUPPLY_HEALTH_GOOD = 1
uint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2
uint8 POWER_SUPPLY_HEALTH_DEAD = 3
uint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4
uint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5
uint8 POWER_SUPPLY_HEALTH_COLD = 6
uint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7
uint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8

# Power supply technology (chemistry) constants
uint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0
uint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1
uint8 POWER_SUPPLY_TECHNOLOGY_LION = 2
uint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3
uint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4
uint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5
uint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6

Header  header
float32 voltage          # Voltage in Volts (Mandatory)
float32 current          # Negative when discharging (A)  (If unmeasured NaN)
float32 charge           # Current charge in Ah  (If unmeasured NaN)
float32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)
float32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)
float32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)
uint8   power_supply_status     # The charging status as reported. Values defined above
uint8   power_supply_health     # The battery health metric. Values defined above
uint8   power_supply_technology # The battery chemistry. Values defined above
bool    present          # True if the battery is present

float32[] cell_voltage   # An array of individual cell voltages for each cell in the pack
                         # If individual voltages unknown but number of cells known set each to NaN
string location          # The location into which the battery is inserted. (slot number or plug)
string serial_number     # The best approximation of the battery serial number

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
float32 z"""
  # Pseudo-constants
  READY = 0
  MOVING = 1
  STOPPED = 2

  __slots__ = ['header','robot_id','agv_msg','ran_status']
  _slot_types = ['std_msgs/Header','opil_v2/Id','opil_v2/RobotState','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,robot_id,agv_msg,ran_status

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RANState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.robot_id is None:
        self.robot_id = opil_v2.msg.Id()
      if self.agv_msg is None:
        self.agv_msg = opil_v2.msg.RobotState()
      if self.ran_status is None:
        self.ran_status = 0
    else:
      self.header = std_msgs.msg.Header()
      self.robot_id = opil_v2.msg.Id()
      self.agv_msg = opil_v2.msg.RobotState()
      self.ran_status = 0

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.agv_msg.header.seq, _x.agv_msg.header.stamp.secs, _x.agv_msg.header.stamp.nsecs))
      _x = self.agv_msg.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.agv_msg.vehicle_id.id))
      _x = self.agv_msg.vehicle_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6I().pack(_x.agv_msg.last_terminated_action.task_id, _x.agv_msg.last_terminated_action.action_id, _x.agv_msg.last_terminated_action.motion_id, _x.agv_msg.robot_status.header.seq, _x.agv_msg.robot_status.header.stamp.secs, _x.agv_msg.robot_status.header.stamp.nsecs))
      _x = self.agv_msg.robot_status.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6bi3I().pack(_x.agv_msg.robot_status.mode.val, _x.agv_msg.robot_status.e_stopped.val, _x.agv_msg.robot_status.drives_powered.val, _x.agv_msg.robot_status.motion_possible.val, _x.agv_msg.robot_status.in_motion.val, _x.agv_msg.robot_status.in_error.val, _x.agv_msg.robot_status.error_code, _x.agv_msg.battery_state.header.seq, _x.agv_msg.battery_state.header.stamp.secs, _x.agv_msg.battery_state.header.stamp.nsecs))
      _x = self.agv_msg.battery_state.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6f4B().pack(_x.agv_msg.battery_state.voltage, _x.agv_msg.battery_state.current, _x.agv_msg.battery_state.charge, _x.agv_msg.battery_state.capacity, _x.agv_msg.battery_state.design_capacity, _x.agv_msg.battery_state.percentage, _x.agv_msg.battery_state.power_supply_status, _x.agv_msg.battery_state.power_supply_health, _x.agv_msg.battery_state.power_supply_technology, _x.agv_msg.battery_state.present))
      length = len(self.agv_msg.battery_state.cell_voltage)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.agv_msg.battery_state.cell_voltage))
      _x = self.agv_msg.battery_state.location
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.agv_msg.battery_state.serial_number
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_9d3I().pack(_x.agv_msg.current_position.x, _x.agv_msg.current_position.y, _x.agv_msg.current_position.theta, _x.agv_msg.current_velocity.linear.x, _x.agv_msg.current_velocity.linear.y, _x.agv_msg.current_velocity.linear.z, _x.agv_msg.current_velocity.angular.x, _x.agv_msg.current_velocity.angular.y, _x.agv_msg.current_velocity.angular.z, _x.agv_msg.footprint.header.seq, _x.agv_msg.footprint.header.stamp.secs, _x.agv_msg.footprint.header.stamp.nsecs))
      _x = self.agv_msg.footprint.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.agv_msg.footprint.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.agv_msg.footprint.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_B().pack(self.ran_status))
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
      if self.agv_msg is None:
        self.agv_msg = opil_v2.msg.RobotState()
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
      _x = self
      start = end
      end += 12
      (_x.agv_msg.header.seq, _x.agv_msg.header.stamp.secs, _x.agv_msg.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.agv_msg.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.agv_msg.vehicle_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.vehicle_id.description = str[start:end].decode('utf-8')
      else:
        self.agv_msg.vehicle_id.description = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.agv_msg.last_terminated_action.task_id, _x.agv_msg.last_terminated_action.action_id, _x.agv_msg.last_terminated_action.motion_id, _x.agv_msg.robot_status.header.seq, _x.agv_msg.robot_status.header.stamp.secs, _x.agv_msg.robot_status.header.stamp.nsecs,) = _get_struct_6I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.robot_status.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.agv_msg.robot_status.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 22
      (_x.agv_msg.robot_status.mode.val, _x.agv_msg.robot_status.e_stopped.val, _x.agv_msg.robot_status.drives_powered.val, _x.agv_msg.robot_status.motion_possible.val, _x.agv_msg.robot_status.in_motion.val, _x.agv_msg.robot_status.in_error.val, _x.agv_msg.robot_status.error_code, _x.agv_msg.battery_state.header.seq, _x.agv_msg.battery_state.header.stamp.secs, _x.agv_msg.battery_state.header.stamp.nsecs,) = _get_struct_6bi3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.battery_state.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.agv_msg.battery_state.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.agv_msg.battery_state.voltage, _x.agv_msg.battery_state.current, _x.agv_msg.battery_state.charge, _x.agv_msg.battery_state.capacity, _x.agv_msg.battery_state.design_capacity, _x.agv_msg.battery_state.percentage, _x.agv_msg.battery_state.power_supply_status, _x.agv_msg.battery_state.power_supply_health, _x.agv_msg.battery_state.power_supply_technology, _x.agv_msg.battery_state.present,) = _get_struct_6f4B().unpack(str[start:end])
      self.agv_msg.battery_state.present = bool(self.agv_msg.battery_state.present)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.agv_msg.battery_state.cell_voltage = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.battery_state.location = str[start:end].decode('utf-8')
      else:
        self.agv_msg.battery_state.location = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.battery_state.serial_number = str[start:end].decode('utf-8')
      else:
        self.agv_msg.battery_state.serial_number = str[start:end]
      _x = self
      start = end
      end += 84
      (_x.agv_msg.current_position.x, _x.agv_msg.current_position.y, _x.agv_msg.current_position.theta, _x.agv_msg.current_velocity.linear.x, _x.agv_msg.current_velocity.linear.y, _x.agv_msg.current_velocity.linear.z, _x.agv_msg.current_velocity.angular.x, _x.agv_msg.current_velocity.angular.y, _x.agv_msg.current_velocity.angular.z, _x.agv_msg.footprint.header.seq, _x.agv_msg.footprint.header.stamp.secs, _x.agv_msg.footprint.header.stamp.nsecs,) = _get_struct_9d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.footprint.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.agv_msg.footprint.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.agv_msg.footprint.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.agv_msg.footprint.polygon.points.append(val1)
      start = end
      end += 1
      (self.ran_status,) = _get_struct_B().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_3I().pack(_x.agv_msg.header.seq, _x.agv_msg.header.stamp.secs, _x.agv_msg.header.stamp.nsecs))
      _x = self.agv_msg.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.agv_msg.vehicle_id.id))
      _x = self.agv_msg.vehicle_id.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6I().pack(_x.agv_msg.last_terminated_action.task_id, _x.agv_msg.last_terminated_action.action_id, _x.agv_msg.last_terminated_action.motion_id, _x.agv_msg.robot_status.header.seq, _x.agv_msg.robot_status.header.stamp.secs, _x.agv_msg.robot_status.header.stamp.nsecs))
      _x = self.agv_msg.robot_status.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6bi3I().pack(_x.agv_msg.robot_status.mode.val, _x.agv_msg.robot_status.e_stopped.val, _x.agv_msg.robot_status.drives_powered.val, _x.agv_msg.robot_status.motion_possible.val, _x.agv_msg.robot_status.in_motion.val, _x.agv_msg.robot_status.in_error.val, _x.agv_msg.robot_status.error_code, _x.agv_msg.battery_state.header.seq, _x.agv_msg.battery_state.header.stamp.secs, _x.agv_msg.battery_state.header.stamp.nsecs))
      _x = self.agv_msg.battery_state.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6f4B().pack(_x.agv_msg.battery_state.voltage, _x.agv_msg.battery_state.current, _x.agv_msg.battery_state.charge, _x.agv_msg.battery_state.capacity, _x.agv_msg.battery_state.design_capacity, _x.agv_msg.battery_state.percentage, _x.agv_msg.battery_state.power_supply_status, _x.agv_msg.battery_state.power_supply_health, _x.agv_msg.battery_state.power_supply_technology, _x.agv_msg.battery_state.present))
      length = len(self.agv_msg.battery_state.cell_voltage)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.agv_msg.battery_state.cell_voltage.tostring())
      _x = self.agv_msg.battery_state.location
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.agv_msg.battery_state.serial_number
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_9d3I().pack(_x.agv_msg.current_position.x, _x.agv_msg.current_position.y, _x.agv_msg.current_position.theta, _x.agv_msg.current_velocity.linear.x, _x.agv_msg.current_velocity.linear.y, _x.agv_msg.current_velocity.linear.z, _x.agv_msg.current_velocity.angular.x, _x.agv_msg.current_velocity.angular.y, _x.agv_msg.current_velocity.angular.z, _x.agv_msg.footprint.header.seq, _x.agv_msg.footprint.header.stamp.secs, _x.agv_msg.footprint.header.stamp.nsecs))
      _x = self.agv_msg.footprint.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.agv_msg.footprint.polygon.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.agv_msg.footprint.polygon.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_B().pack(self.ran_status))
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
      if self.agv_msg is None:
        self.agv_msg = opil_v2.msg.RobotState()
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
      _x = self
      start = end
      end += 12
      (_x.agv_msg.header.seq, _x.agv_msg.header.stamp.secs, _x.agv_msg.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.agv_msg.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.agv_msg.vehicle_id.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.vehicle_id.description = str[start:end].decode('utf-8')
      else:
        self.agv_msg.vehicle_id.description = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.agv_msg.last_terminated_action.task_id, _x.agv_msg.last_terminated_action.action_id, _x.agv_msg.last_terminated_action.motion_id, _x.agv_msg.robot_status.header.seq, _x.agv_msg.robot_status.header.stamp.secs, _x.agv_msg.robot_status.header.stamp.nsecs,) = _get_struct_6I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.robot_status.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.agv_msg.robot_status.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 22
      (_x.agv_msg.robot_status.mode.val, _x.agv_msg.robot_status.e_stopped.val, _x.agv_msg.robot_status.drives_powered.val, _x.agv_msg.robot_status.motion_possible.val, _x.agv_msg.robot_status.in_motion.val, _x.agv_msg.robot_status.in_error.val, _x.agv_msg.robot_status.error_code, _x.agv_msg.battery_state.header.seq, _x.agv_msg.battery_state.header.stamp.secs, _x.agv_msg.battery_state.header.stamp.nsecs,) = _get_struct_6bi3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.battery_state.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.agv_msg.battery_state.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.agv_msg.battery_state.voltage, _x.agv_msg.battery_state.current, _x.agv_msg.battery_state.charge, _x.agv_msg.battery_state.capacity, _x.agv_msg.battery_state.design_capacity, _x.agv_msg.battery_state.percentage, _x.agv_msg.battery_state.power_supply_status, _x.agv_msg.battery_state.power_supply_health, _x.agv_msg.battery_state.power_supply_technology, _x.agv_msg.battery_state.present,) = _get_struct_6f4B().unpack(str[start:end])
      self.agv_msg.battery_state.present = bool(self.agv_msg.battery_state.present)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.agv_msg.battery_state.cell_voltage = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.battery_state.location = str[start:end].decode('utf-8')
      else:
        self.agv_msg.battery_state.location = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.battery_state.serial_number = str[start:end].decode('utf-8')
      else:
        self.agv_msg.battery_state.serial_number = str[start:end]
      _x = self
      start = end
      end += 84
      (_x.agv_msg.current_position.x, _x.agv_msg.current_position.y, _x.agv_msg.current_position.theta, _x.agv_msg.current_velocity.linear.x, _x.agv_msg.current_velocity.linear.y, _x.agv_msg.current_velocity.linear.z, _x.agv_msg.current_velocity.angular.x, _x.agv_msg.current_velocity.angular.y, _x.agv_msg.current_velocity.angular.z, _x.agv_msg.footprint.header.seq, _x.agv_msg.footprint.header.stamp.secs, _x.agv_msg.footprint.header.stamp.nsecs,) = _get_struct_9d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.agv_msg.footprint.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.agv_msg.footprint.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.agv_msg.footprint.polygon.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.agv_msg.footprint.polygon.points.append(val1)
      start = end
      end += 1
      (self.ran_status,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_6I = None
def _get_struct_6I():
    global _struct_6I
    if _struct_6I is None:
        _struct_6I = struct.Struct("<6I")
    return _struct_6I
_struct_6f4B = None
def _get_struct_6f4B():
    global _struct_6f4B
    if _struct_6f4B is None:
        _struct_6f4B = struct.Struct("<6f4B")
    return _struct_6f4B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_6bi3I = None
def _get_struct_6bi3I():
    global _struct_6bi3I
    if _struct_6bi3I is None:
        _struct_6bi3I = struct.Struct("<6bi3I")
    return _struct_6bi3I
_struct_9d3I = None
def _get_struct_9d3I():
    global _struct_9d3I
    if _struct_9d3I is None:
        _struct_9d3I = struct.Struct("<9d3I")
    return _struct_9d3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
