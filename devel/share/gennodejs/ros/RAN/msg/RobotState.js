// Auto-generated. Do not edit!

// (in-package RAN.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AssignmentId = require('./AssignmentId.js');
let sensor_msgs = _finder('sensor_msgs');
let industrial_msgs = _finder('industrial_msgs');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');
let mars_common_msgs = _finder('mars_common_msgs');

//-----------------------------------------------------------

class RobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_id = null;
      this.last_terminated_action = null;
      this.robot_status = null;
      this.battery_state = null;
      this.current_position = null;
      this.current_velocity = null;
      this.footprint = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_id')) {
        this.vehicle_id = initObj.vehicle_id
      }
      else {
        this.vehicle_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('last_terminated_action')) {
        this.last_terminated_action = initObj.last_terminated_action
      }
      else {
        this.last_terminated_action = new AssignmentId();
      }
      if (initObj.hasOwnProperty('robot_status')) {
        this.robot_status = initObj.robot_status
      }
      else {
        this.robot_status = new industrial_msgs.msg.RobotStatus();
      }
      if (initObj.hasOwnProperty('battery_state')) {
        this.battery_state = initObj.battery_state
      }
      else {
        this.battery_state = new sensor_msgs.msg.BatteryState();
      }
      if (initObj.hasOwnProperty('current_position')) {
        this.current_position = initObj.current_position
      }
      else {
        this.current_position = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('current_velocity')) {
        this.current_velocity = initObj.current_velocity
      }
      else {
        this.current_velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('footprint')) {
        this.footprint = initObj.footprint
      }
      else {
        this.footprint = new geometry_msgs.msg.PolygonStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.vehicle_id, buffer, bufferOffset);
    // Serialize message field [last_terminated_action]
    bufferOffset = AssignmentId.serialize(obj.last_terminated_action, buffer, bufferOffset);
    // Serialize message field [robot_status]
    bufferOffset = industrial_msgs.msg.RobotStatus.serialize(obj.robot_status, buffer, bufferOffset);
    // Serialize message field [battery_state]
    bufferOffset = sensor_msgs.msg.BatteryState.serialize(obj.battery_state, buffer, bufferOffset);
    // Serialize message field [current_position]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.current_position, buffer, bufferOffset);
    // Serialize message field [current_velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.current_velocity, buffer, bufferOffset);
    // Serialize message field [footprint]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.footprint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotState
    let len;
    let data = new RobotState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_id]
    data.vehicle_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_terminated_action]
    data.last_terminated_action = AssignmentId.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_status]
    data.robot_status = industrial_msgs.msg.RobotStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery_state]
    data.battery_state = sensor_msgs.msg.BatteryState.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_position]
    data.current_position = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_velocity]
    data.current_velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [footprint]
    data.footprint = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += mars_common_msgs.msg.Id.getMessageSize(object.vehicle_id);
    length += AssignmentId.getMessageSize(object.last_terminated_action);
    length += industrial_msgs.msg.RobotStatus.getMessageSize(object.robot_status);
    length += sensor_msgs.msg.BatteryState.getMessageSize(object.battery_state);
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.footprint);
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RAN/RobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45226de6e5930fb93f540273f2dbf9ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message defining the Robot / AGV status 
    Header header
    mars_common_msgs/Id vehicle_id
    AssignmentId last_terminated_action
    industrial_msgs/RobotStatus robot_status
    sensor_msgs/BatteryState battery_state
    geometry_msgs/Pose2D current_position
    geometry_msgs/Twist current_velocity
    geometry_msgs/PolygonStamped footprint
    
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
    MSG: RAN/AssignmentId
    # Message for the definition of the ids of an Assignment
    mars_common_msgs/Id task_id
    mars_common_msgs/Id action_id
    mars_common_msgs/Id motion_id
    
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
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_id !== undefined) {
      resolved.vehicle_id = mars_common_msgs.msg.Id.Resolve(msg.vehicle_id)
    }
    else {
      resolved.vehicle_id = new mars_common_msgs.msg.Id()
    }

    if (msg.last_terminated_action !== undefined) {
      resolved.last_terminated_action = AssignmentId.Resolve(msg.last_terminated_action)
    }
    else {
      resolved.last_terminated_action = new AssignmentId()
    }

    if (msg.robot_status !== undefined) {
      resolved.robot_status = industrial_msgs.msg.RobotStatus.Resolve(msg.robot_status)
    }
    else {
      resolved.robot_status = new industrial_msgs.msg.RobotStatus()
    }

    if (msg.battery_state !== undefined) {
      resolved.battery_state = sensor_msgs.msg.BatteryState.Resolve(msg.battery_state)
    }
    else {
      resolved.battery_state = new sensor_msgs.msg.BatteryState()
    }

    if (msg.current_position !== undefined) {
      resolved.current_position = geometry_msgs.msg.Pose2D.Resolve(msg.current_position)
    }
    else {
      resolved.current_position = new geometry_msgs.msg.Pose2D()
    }

    if (msg.current_velocity !== undefined) {
      resolved.current_velocity = geometry_msgs.msg.Twist.Resolve(msg.current_velocity)
    }
    else {
      resolved.current_velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.footprint !== undefined) {
      resolved.footprint = geometry_msgs.msg.PolygonStamped.Resolve(msg.footprint)
    }
    else {
      resolved.footprint = new geometry_msgs.msg.PolygonStamped()
    }

    return resolved;
    }
};

module.exports = RobotState;
